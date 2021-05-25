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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.operations.list@.
module Network.Google.Resource.Spanner.Projects.Instances.Operations.List
    (
    -- * REST Resource
      ProjectsInstancesOperationsListResource

    -- * Creating a Request
    , projectsInstancesOperationsList
    , ProjectsInstancesOperationsList

    -- * Request Lenses
    , piolXgafv
    , piolUploadProtocol
    , piolAccessToken
    , piolUploadType
    , piolName
    , piolFilter
    , piolPageToken
    , piolPageSize
    , piolCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.operations.list@ method which the
-- 'ProjectsInstancesOperationsList' request conforms to.
type ProjectsInstancesOperationsListResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListOperationsResponse

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding allows API services to override the binding to use
-- different resource name schemes, such as \`users\/*\/operations\`. To
-- override the binding, API services can add a binding such as
-- \`\"\/v1\/{name=users\/*}\/operations\"\` to their service
-- configuration. For backwards compatibility, the default name includes
-- the operations collection id, however overriding users must ensure the
-- name binding is the parent resource, without the operations collection
-- id.
--
-- /See:/ 'projectsInstancesOperationsList' smart constructor.
data ProjectsInstancesOperationsList =
  ProjectsInstancesOperationsList'
    { _piolXgafv :: !(Maybe Xgafv)
    , _piolUploadProtocol :: !(Maybe Text)
    , _piolAccessToken :: !(Maybe Text)
    , _piolUploadType :: !(Maybe Text)
    , _piolName :: !Text
    , _piolFilter :: !(Maybe Text)
    , _piolPageToken :: !(Maybe Text)
    , _piolPageSize :: !(Maybe (Textual Int32))
    , _piolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piolXgafv'
--
-- * 'piolUploadProtocol'
--
-- * 'piolAccessToken'
--
-- * 'piolUploadType'
--
-- * 'piolName'
--
-- * 'piolFilter'
--
-- * 'piolPageToken'
--
-- * 'piolPageSize'
--
-- * 'piolCallback'
projectsInstancesOperationsList
    :: Text -- ^ 'piolName'
    -> ProjectsInstancesOperationsList
projectsInstancesOperationsList pPiolName_ =
  ProjectsInstancesOperationsList'
    { _piolXgafv = Nothing
    , _piolUploadProtocol = Nothing
    , _piolAccessToken = Nothing
    , _piolUploadType = Nothing
    , _piolName = pPiolName_
    , _piolFilter = Nothing
    , _piolPageToken = Nothing
    , _piolPageSize = Nothing
    , _piolCallback = Nothing
    }


-- | V1 error format.
piolXgafv :: Lens' ProjectsInstancesOperationsList (Maybe Xgafv)
piolXgafv
  = lens _piolXgafv (\ s a -> s{_piolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piolUploadProtocol :: Lens' ProjectsInstancesOperationsList (Maybe Text)
piolUploadProtocol
  = lens _piolUploadProtocol
      (\ s a -> s{_piolUploadProtocol = a})

-- | OAuth access token.
piolAccessToken :: Lens' ProjectsInstancesOperationsList (Maybe Text)
piolAccessToken
  = lens _piolAccessToken
      (\ s a -> s{_piolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piolUploadType :: Lens' ProjectsInstancesOperationsList (Maybe Text)
piolUploadType
  = lens _piolUploadType
      (\ s a -> s{_piolUploadType = a})

-- | The name of the operation\'s parent resource.
piolName :: Lens' ProjectsInstancesOperationsList Text
piolName = lens _piolName (\ s a -> s{_piolName = a})

-- | The standard list filter.
piolFilter :: Lens' ProjectsInstancesOperationsList (Maybe Text)
piolFilter
  = lens _piolFilter (\ s a -> s{_piolFilter = a})

-- | The standard list page token.
piolPageToken :: Lens' ProjectsInstancesOperationsList (Maybe Text)
piolPageToken
  = lens _piolPageToken
      (\ s a -> s{_piolPageToken = a})

-- | The standard list page size.
piolPageSize :: Lens' ProjectsInstancesOperationsList (Maybe Int32)
piolPageSize
  = lens _piolPageSize (\ s a -> s{_piolPageSize = a})
      . mapping _Coerce

-- | JSONP
piolCallback :: Lens' ProjectsInstancesOperationsList (Maybe Text)
piolCallback
  = lens _piolCallback (\ s a -> s{_piolCallback = a})

instance GoogleRequest
           ProjectsInstancesOperationsList
         where
        type Rs ProjectsInstancesOperationsList =
             ListOperationsResponse
        type Scopes ProjectsInstancesOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesOperationsList'{..}
          = go _piolName _piolXgafv _piolUploadProtocol
              _piolAccessToken
              _piolUploadType
              _piolFilter
              _piolPageToken
              _piolPageSize
              _piolCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesOperationsListResource)
                      mempty
