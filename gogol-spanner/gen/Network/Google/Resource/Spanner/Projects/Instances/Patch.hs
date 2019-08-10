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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an instance, and begins allocating or releasing resources as
-- requested. The returned long-running operation can be used to track the
-- progress of updating the instance. If the named instance does not exist,
-- returns \`NOT_FOUND\`. Immediately upon completion of this request: *
-- For resource types for which a decrease in the instance\'s allocation
-- has been requested, billing is based on the newly-requested level. Until
-- completion of the returned operation: * Cancelling the operation sets
-- its metadata\'s cancel_time, and begins restoring resources to their
-- pre-request values. The operation is guaranteed to succeed at undoing
-- all resource changes, after which point it terminates with a
-- \`CANCELLED\` status. * All other attempts to modify the instance are
-- rejected. * Reading the instance via the API continues to give the
-- pre-request resource levels. Upon completion of the returned operation:
-- * Billing begins for all successfully-allocated resources (some types
-- may have lower than the requested levels). * All newly-reserved
-- resources are available for serving the instance\'s tables. * The
-- instance\'s new resource levels are readable via the API. The returned
-- long-running operation will have a name of the format \`\/operations\/\`
-- and can be used to track the instance modification. The metadata field
-- type is UpdateInstanceMetadata. The response field type is Instance, if
-- successful. Authorization requires \`spanner.instances.update\`
-- permission on resource name.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.patch@.
module Network.Google.Resource.Spanner.Projects.Instances.Patch
    (
    -- * REST Resource
      ProjectsInstancesPatchResource

    -- * Creating a Request
    , projectsInstancesPatch
    , ProjectsInstancesPatch

    -- * Request Lenses
    , pipXgafv
    , pipUploadProtocol
    , pipAccessToken
    , pipUploadType
    , pipPayload
    , pipName
    , pipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.patch@ method which the
-- 'ProjectsInstancesPatch' request conforms to.
type ProjectsInstancesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateInstanceRequest :>
                       Patch '[JSON] Operation

-- | Updates an instance, and begins allocating or releasing resources as
-- requested. The returned long-running operation can be used to track the
-- progress of updating the instance. If the named instance does not exist,
-- returns \`NOT_FOUND\`. Immediately upon completion of this request: *
-- For resource types for which a decrease in the instance\'s allocation
-- has been requested, billing is based on the newly-requested level. Until
-- completion of the returned operation: * Cancelling the operation sets
-- its metadata\'s cancel_time, and begins restoring resources to their
-- pre-request values. The operation is guaranteed to succeed at undoing
-- all resource changes, after which point it terminates with a
-- \`CANCELLED\` status. * All other attempts to modify the instance are
-- rejected. * Reading the instance via the API continues to give the
-- pre-request resource levels. Upon completion of the returned operation:
-- * Billing begins for all successfully-allocated resources (some types
-- may have lower than the requested levels). * All newly-reserved
-- resources are available for serving the instance\'s tables. * The
-- instance\'s new resource levels are readable via the API. The returned
-- long-running operation will have a name of the format \`\/operations\/\`
-- and can be used to track the instance modification. The metadata field
-- type is UpdateInstanceMetadata. The response field type is Instance, if
-- successful. Authorization requires \`spanner.instances.update\`
-- permission on resource name.
--
-- /See:/ 'projectsInstancesPatch' smart constructor.
data ProjectsInstancesPatch =
  ProjectsInstancesPatch'
    { _pipXgafv          :: !(Maybe Xgafv)
    , _pipUploadProtocol :: !(Maybe Text)
    , _pipAccessToken    :: !(Maybe Text)
    , _pipUploadType     :: !(Maybe Text)
    , _pipPayload        :: !UpdateInstanceRequest
    , _pipName           :: !Text
    , _pipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pipXgafv'
--
-- * 'pipUploadProtocol'
--
-- * 'pipAccessToken'
--
-- * 'pipUploadType'
--
-- * 'pipPayload'
--
-- * 'pipName'
--
-- * 'pipCallback'
projectsInstancesPatch
    :: UpdateInstanceRequest -- ^ 'pipPayload'
    -> Text -- ^ 'pipName'
    -> ProjectsInstancesPatch
projectsInstancesPatch pPipPayload_ pPipName_ =
  ProjectsInstancesPatch'
    { _pipXgafv = Nothing
    , _pipUploadProtocol = Nothing
    , _pipAccessToken = Nothing
    , _pipUploadType = Nothing
    , _pipPayload = pPipPayload_
    , _pipName = pPipName_
    , _pipCallback = Nothing
    }


-- | V1 error format.
pipXgafv :: Lens' ProjectsInstancesPatch (Maybe Xgafv)
pipXgafv = lens _pipXgafv (\ s a -> s{_pipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pipUploadProtocol :: Lens' ProjectsInstancesPatch (Maybe Text)
pipUploadProtocol
  = lens _pipUploadProtocol
      (\ s a -> s{_pipUploadProtocol = a})

-- | OAuth access token.
pipAccessToken :: Lens' ProjectsInstancesPatch (Maybe Text)
pipAccessToken
  = lens _pipAccessToken
      (\ s a -> s{_pipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pipUploadType :: Lens' ProjectsInstancesPatch (Maybe Text)
pipUploadType
  = lens _pipUploadType
      (\ s a -> s{_pipUploadType = a})

-- | Multipart request metadata.
pipPayload :: Lens' ProjectsInstancesPatch UpdateInstanceRequest
pipPayload
  = lens _pipPayload (\ s a -> s{_pipPayload = a})

-- | Required. A unique identifier for the instance, which cannot be changed
-- after the instance is created. Values are of the form
-- \`projects\/\/instances\/a-z*[a-z0-9]\`. The final segment of the name
-- must be between 2 and 64 characters in length.
pipName :: Lens' ProjectsInstancesPatch Text
pipName = lens _pipName (\ s a -> s{_pipName = a})

-- | JSONP
pipCallback :: Lens' ProjectsInstancesPatch (Maybe Text)
pipCallback
  = lens _pipCallback (\ s a -> s{_pipCallback = a})

instance GoogleRequest ProjectsInstancesPatch where
        type Rs ProjectsInstancesPatch = Operation
        type Scopes ProjectsInstancesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesPatch'{..}
          = go _pipName _pipXgafv _pipUploadProtocol
              _pipAccessToken
              _pipUploadType
              _pipCallback
              (Just AltJSON)
              _pipPayload
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesPatchResource)
                      mempty
