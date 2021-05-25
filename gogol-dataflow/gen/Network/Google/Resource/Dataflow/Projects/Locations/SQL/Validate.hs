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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.SQL.Validate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a GoogleSQL query for Cloud Dataflow syntax. Will always
-- confirm the given query parses correctly, and if able to look up schema
-- information from DataCatalog, will validate that the query analyzes
-- properly as well.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.sql.validate@.
module Network.Google.Resource.Dataflow.Projects.Locations.SQL.Validate
    (
    -- * REST Resource
      ProjectsLocationsSQLValidateResource

    -- * Creating a Request
    , projectsLocationsSQLValidate
    , ProjectsLocationsSQLValidate

    -- * Request Lenses
    , plsqlvXgafv
    , plsqlvUploadProtocol
    , plsqlvLocation
    , plsqlvAccessToken
    , plsqlvUploadType
    , plsqlvQuery
    , plsqlvProjectId
    , plsqlvCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.sql.validate@ method which the
-- 'ProjectsLocationsSQLValidate' request conforms to.
type ProjectsLocationsSQLValidateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "sql:validate" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "query" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ValidateResponse

-- | Validates a GoogleSQL query for Cloud Dataflow syntax. Will always
-- confirm the given query parses correctly, and if able to look up schema
-- information from DataCatalog, will validate that the query analyzes
-- properly as well.
--
-- /See:/ 'projectsLocationsSQLValidate' smart constructor.
data ProjectsLocationsSQLValidate =
  ProjectsLocationsSQLValidate'
    { _plsqlvXgafv :: !(Maybe Xgafv)
    , _plsqlvUploadProtocol :: !(Maybe Text)
    , _plsqlvLocation :: !Text
    , _plsqlvAccessToken :: !(Maybe Text)
    , _plsqlvUploadType :: !(Maybe Text)
    , _plsqlvQuery :: !(Maybe Text)
    , _plsqlvProjectId :: !Text
    , _plsqlvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSQLValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsqlvXgafv'
--
-- * 'plsqlvUploadProtocol'
--
-- * 'plsqlvLocation'
--
-- * 'plsqlvAccessToken'
--
-- * 'plsqlvUploadType'
--
-- * 'plsqlvQuery'
--
-- * 'plsqlvProjectId'
--
-- * 'plsqlvCallback'
projectsLocationsSQLValidate
    :: Text -- ^ 'plsqlvLocation'
    -> Text -- ^ 'plsqlvProjectId'
    -> ProjectsLocationsSQLValidate
projectsLocationsSQLValidate pPlsqlvLocation_ pPlsqlvProjectId_ =
  ProjectsLocationsSQLValidate'
    { _plsqlvXgafv = Nothing
    , _plsqlvUploadProtocol = Nothing
    , _plsqlvLocation = pPlsqlvLocation_
    , _plsqlvAccessToken = Nothing
    , _plsqlvUploadType = Nothing
    , _plsqlvQuery = Nothing
    , _plsqlvProjectId = pPlsqlvProjectId_
    , _plsqlvCallback = Nothing
    }


-- | V1 error format.
plsqlvXgafv :: Lens' ProjectsLocationsSQLValidate (Maybe Xgafv)
plsqlvXgafv
  = lens _plsqlvXgafv (\ s a -> s{_plsqlvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsqlvUploadProtocol :: Lens' ProjectsLocationsSQLValidate (Maybe Text)
plsqlvUploadProtocol
  = lens _plsqlvUploadProtocol
      (\ s a -> s{_plsqlvUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- to which to direct the request.
plsqlvLocation :: Lens' ProjectsLocationsSQLValidate Text
plsqlvLocation
  = lens _plsqlvLocation
      (\ s a -> s{_plsqlvLocation = a})

-- | OAuth access token.
plsqlvAccessToken :: Lens' ProjectsLocationsSQLValidate (Maybe Text)
plsqlvAccessToken
  = lens _plsqlvAccessToken
      (\ s a -> s{_plsqlvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsqlvUploadType :: Lens' ProjectsLocationsSQLValidate (Maybe Text)
plsqlvUploadType
  = lens _plsqlvUploadType
      (\ s a -> s{_plsqlvUploadType = a})

-- | The sql query to validate.
plsqlvQuery :: Lens' ProjectsLocationsSQLValidate (Maybe Text)
plsqlvQuery
  = lens _plsqlvQuery (\ s a -> s{_plsqlvQuery = a})

-- | Required. The ID of the Cloud Platform project that the job belongs to.
plsqlvProjectId :: Lens' ProjectsLocationsSQLValidate Text
plsqlvProjectId
  = lens _plsqlvProjectId
      (\ s a -> s{_plsqlvProjectId = a})

-- | JSONP
plsqlvCallback :: Lens' ProjectsLocationsSQLValidate (Maybe Text)
plsqlvCallback
  = lens _plsqlvCallback
      (\ s a -> s{_plsqlvCallback = a})

instance GoogleRequest ProjectsLocationsSQLValidate
         where
        type Rs ProjectsLocationsSQLValidate =
             ValidateResponse
        type Scopes ProjectsLocationsSQLValidate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsSQLValidate'{..}
          = go _plsqlvProjectId _plsqlvLocation _plsqlvXgafv
              _plsqlvUploadProtocol
              _plsqlvAccessToken
              _plsqlvUploadType
              _plsqlvQuery
              _plsqlvCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsSQLValidateResource)
                      mempty
