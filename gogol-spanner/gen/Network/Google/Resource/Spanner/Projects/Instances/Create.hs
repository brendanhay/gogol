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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an instance and begins preparing it to begin serving. The
-- returned long-running operation can be used to track the progress of
-- preparing the new instance. The instance name is assigned by the caller.
-- If the named instance already exists, \`CreateInstance\` returns
-- \`ALREADY_EXISTS\`. Immediately upon completion of this request: * The
-- instance is readable via the API, with all requested attributes but no
-- allocated resources. Its state is \`CREATING\`. Until completion of the
-- returned operation: * Cancelling the operation renders the instance
-- immediately unreadable via the API. * The instance can be deleted. * All
-- other attempts to modify the instance are rejected. Upon completion of
-- the returned operation: * Billing for all successfully-allocated
-- resources begins (some types may have lower than the requested levels).
-- * Databases can be created in the instance. * The instance\'s allocated
-- resource levels are readable via the API. * The instance\'s state
-- becomes \`READY\`. The returned long-running operation will have a name
-- of the format \`\/operations\/\` and can be used to track creation of
-- the instance. The metadata field type is CreateInstanceMetadata. The
-- response field type is Instance, if successful.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.create@.
module Network.Google.Resource.Spanner.Projects.Instances.Create
    (
    -- * REST Resource
      ProjectsInstancesCreateResource

    -- * Creating a Request
    , projectsInstancesCreate
    , ProjectsInstancesCreate

    -- * Request Lenses
    , picParent
    , picXgafv
    , picUploadProtocol
    , picAccessToken
    , picUploadType
    , picPayload
    , picCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.create@ method which the
-- 'ProjectsInstancesCreate' request conforms to.
type ProjectsInstancesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "instances" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateInstanceRequest :>
                         Post '[JSON] Operation

-- | Creates an instance and begins preparing it to begin serving. The
-- returned long-running operation can be used to track the progress of
-- preparing the new instance. The instance name is assigned by the caller.
-- If the named instance already exists, \`CreateInstance\` returns
-- \`ALREADY_EXISTS\`. Immediately upon completion of this request: * The
-- instance is readable via the API, with all requested attributes but no
-- allocated resources. Its state is \`CREATING\`. Until completion of the
-- returned operation: * Cancelling the operation renders the instance
-- immediately unreadable via the API. * The instance can be deleted. * All
-- other attempts to modify the instance are rejected. Upon completion of
-- the returned operation: * Billing for all successfully-allocated
-- resources begins (some types may have lower than the requested levels).
-- * Databases can be created in the instance. * The instance\'s allocated
-- resource levels are readable via the API. * The instance\'s state
-- becomes \`READY\`. The returned long-running operation will have a name
-- of the format \`\/operations\/\` and can be used to track creation of
-- the instance. The metadata field type is CreateInstanceMetadata. The
-- response field type is Instance, if successful.
--
-- /See:/ 'projectsInstancesCreate' smart constructor.
data ProjectsInstancesCreate =
  ProjectsInstancesCreate'
    { _picParent :: !Text
    , _picXgafv :: !(Maybe Xgafv)
    , _picUploadProtocol :: !(Maybe Text)
    , _picAccessToken :: !(Maybe Text)
    , _picUploadType :: !(Maybe Text)
    , _picPayload :: !CreateInstanceRequest
    , _picCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picParent'
--
-- * 'picXgafv'
--
-- * 'picUploadProtocol'
--
-- * 'picAccessToken'
--
-- * 'picUploadType'
--
-- * 'picPayload'
--
-- * 'picCallback'
projectsInstancesCreate
    :: Text -- ^ 'picParent'
    -> CreateInstanceRequest -- ^ 'picPayload'
    -> ProjectsInstancesCreate
projectsInstancesCreate pPicParent_ pPicPayload_ =
  ProjectsInstancesCreate'
    { _picParent = pPicParent_
    , _picXgafv = Nothing
    , _picUploadProtocol = Nothing
    , _picAccessToken = Nothing
    , _picUploadType = Nothing
    , _picPayload = pPicPayload_
    , _picCallback = Nothing
    }


-- | Required. The name of the project in which to create the instance.
-- Values are of the form \`projects\/\`.
picParent :: Lens' ProjectsInstancesCreate Text
picParent
  = lens _picParent (\ s a -> s{_picParent = a})

-- | V1 error format.
picXgafv :: Lens' ProjectsInstancesCreate (Maybe Xgafv)
picXgafv = lens _picXgafv (\ s a -> s{_picXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
picUploadProtocol :: Lens' ProjectsInstancesCreate (Maybe Text)
picUploadProtocol
  = lens _picUploadProtocol
      (\ s a -> s{_picUploadProtocol = a})

-- | OAuth access token.
picAccessToken :: Lens' ProjectsInstancesCreate (Maybe Text)
picAccessToken
  = lens _picAccessToken
      (\ s a -> s{_picAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
picUploadType :: Lens' ProjectsInstancesCreate (Maybe Text)
picUploadType
  = lens _picUploadType
      (\ s a -> s{_picUploadType = a})

-- | Multipart request metadata.
picPayload :: Lens' ProjectsInstancesCreate CreateInstanceRequest
picPayload
  = lens _picPayload (\ s a -> s{_picPayload = a})

-- | JSONP
picCallback :: Lens' ProjectsInstancesCreate (Maybe Text)
picCallback
  = lens _picCallback (\ s a -> s{_picCallback = a})

instance GoogleRequest ProjectsInstancesCreate where
        type Rs ProjectsInstancesCreate = Operation
        type Scopes ProjectsInstancesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesCreate'{..}
          = go _picParent _picXgafv _picUploadProtocol
              _picAccessToken
              _picUploadType
              _picCallback
              (Just AltJSON)
              _picPayload
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesCreateResource)
                      mempty
