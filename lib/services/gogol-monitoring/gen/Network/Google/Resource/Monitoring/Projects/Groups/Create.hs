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
-- Module      : Network.Google.Resource.Monitoring.Projects.Groups.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new group.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.groups.create@.
module Network.Google.Resource.Monitoring.Projects.Groups.Create
    (
    -- * REST Resource
      ProjectsGroupsCreateResource

    -- * Creating a Request
    , projectsGroupsCreate
    , ProjectsGroupsCreate

    -- * Request Lenses
    , pgcXgafv
    , pgcValidateOnly
    , pgcUploadProtocol
    , pgcAccessToken
    , pgcUploadType
    , pgcPayload
    , pgcName
    , pgcCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.groups.create@ method which the
-- 'ProjectsGroupsCreate' request conforms to.
type ProjectsGroupsCreateResource =
     "v3" :>
       Capture "name" Text :>
         "groups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "validateOnly" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Group :> Post '[JSON] Group

-- | Creates a new group.
--
-- /See:/ 'projectsGroupsCreate' smart constructor.
data ProjectsGroupsCreate =
  ProjectsGroupsCreate'
    { _pgcXgafv :: !(Maybe Xgafv)
    , _pgcValidateOnly :: !(Maybe Bool)
    , _pgcUploadProtocol :: !(Maybe Text)
    , _pgcAccessToken :: !(Maybe Text)
    , _pgcUploadType :: !(Maybe Text)
    , _pgcPayload :: !Group
    , _pgcName :: !Text
    , _pgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGroupsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgcXgafv'
--
-- * 'pgcValidateOnly'
--
-- * 'pgcUploadProtocol'
--
-- * 'pgcAccessToken'
--
-- * 'pgcUploadType'
--
-- * 'pgcPayload'
--
-- * 'pgcName'
--
-- * 'pgcCallback'
projectsGroupsCreate
    :: Group -- ^ 'pgcPayload'
    -> Text -- ^ 'pgcName'
    -> ProjectsGroupsCreate
projectsGroupsCreate pPgcPayload_ pPgcName_ =
  ProjectsGroupsCreate'
    { _pgcXgafv = Nothing
    , _pgcValidateOnly = Nothing
    , _pgcUploadProtocol = Nothing
    , _pgcAccessToken = Nothing
    , _pgcUploadType = Nothing
    , _pgcPayload = pPgcPayload_
    , _pgcName = pPgcName_
    , _pgcCallback = Nothing
    }


-- | V1 error format.
pgcXgafv :: Lens' ProjectsGroupsCreate (Maybe Xgafv)
pgcXgafv = lens _pgcXgafv (\ s a -> s{_pgcXgafv = a})

-- | If true, validate this request but do not create the group.
pgcValidateOnly :: Lens' ProjectsGroupsCreate (Maybe Bool)
pgcValidateOnly
  = lens _pgcValidateOnly
      (\ s a -> s{_pgcValidateOnly = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgcUploadProtocol :: Lens' ProjectsGroupsCreate (Maybe Text)
pgcUploadProtocol
  = lens _pgcUploadProtocol
      (\ s a -> s{_pgcUploadProtocol = a})

-- | OAuth access token.
pgcAccessToken :: Lens' ProjectsGroupsCreate (Maybe Text)
pgcAccessToken
  = lens _pgcAccessToken
      (\ s a -> s{_pgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgcUploadType :: Lens' ProjectsGroupsCreate (Maybe Text)
pgcUploadType
  = lens _pgcUploadType
      (\ s a -> s{_pgcUploadType = a})

-- | Multipart request metadata.
pgcPayload :: Lens' ProjectsGroupsCreate Group
pgcPayload
  = lens _pgcPayload (\ s a -> s{_pgcPayload = a})

-- | Required. The project
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) in which
-- to create the group. The format is: projects\/[PROJECT_ID_OR_NUMBER]
pgcName :: Lens' ProjectsGroupsCreate Text
pgcName = lens _pgcName (\ s a -> s{_pgcName = a})

-- | JSONP
pgcCallback :: Lens' ProjectsGroupsCreate (Maybe Text)
pgcCallback
  = lens _pgcCallback (\ s a -> s{_pgcCallback = a})

instance GoogleRequest ProjectsGroupsCreate where
        type Rs ProjectsGroupsCreate = Group
        type Scopes ProjectsGroupsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsGroupsCreate'{..}
          = go _pgcName _pgcXgafv _pgcValidateOnly
              _pgcUploadProtocol
              _pgcAccessToken
              _pgcUploadType
              _pgcCallback
              (Just AltJSON)
              _pgcPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsCreateResource)
                      mempty
