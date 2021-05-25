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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns UNIMPLEMENTED.NOTE: the
-- name binding allows API services to override the binding to use
-- different resource name schemes, such as users\/*\/operations. To
-- override the binding, API services can add a binding such as
-- \"\/v1\/{name=users\/*}\/operations\" to their service configuration.
-- For backwards compatibility, the default name includes the operations
-- collection id, however overriding users must ensure the name binding is
-- the parent resource, without the operations collection id.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.operations.list@.
module Network.Google.Resource.Dataproc.Projects.Regions.Operations.List
    (
    -- * REST Resource
      ProjectsRegionsOperationsListResource

    -- * Creating a Request
    , projectsRegionsOperationsList
    , ProjectsRegionsOperationsList

    -- * Request Lenses
    , prolXgafv
    , prolUploadProtocol
    , prolAccessToken
    , prolUploadType
    , prolName
    , prolFilter
    , prolPageToken
    , prolPageSize
    , prolCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.operations.list@ method which the
-- 'ProjectsRegionsOperationsList' request conforms to.
type ProjectsRegionsOperationsListResource =
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
-- server doesn\'t support this method, it returns UNIMPLEMENTED.NOTE: the
-- name binding allows API services to override the binding to use
-- different resource name schemes, such as users\/*\/operations. To
-- override the binding, API services can add a binding such as
-- \"\/v1\/{name=users\/*}\/operations\" to their service configuration.
-- For backwards compatibility, the default name includes the operations
-- collection id, however overriding users must ensure the name binding is
-- the parent resource, without the operations collection id.
--
-- /See:/ 'projectsRegionsOperationsList' smart constructor.
data ProjectsRegionsOperationsList =
  ProjectsRegionsOperationsList'
    { _prolXgafv :: !(Maybe Xgafv)
    , _prolUploadProtocol :: !(Maybe Text)
    , _prolAccessToken :: !(Maybe Text)
    , _prolUploadType :: !(Maybe Text)
    , _prolName :: !Text
    , _prolFilter :: !(Maybe Text)
    , _prolPageToken :: !(Maybe Text)
    , _prolPageSize :: !(Maybe (Textual Int32))
    , _prolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prolXgafv'
--
-- * 'prolUploadProtocol'
--
-- * 'prolAccessToken'
--
-- * 'prolUploadType'
--
-- * 'prolName'
--
-- * 'prolFilter'
--
-- * 'prolPageToken'
--
-- * 'prolPageSize'
--
-- * 'prolCallback'
projectsRegionsOperationsList
    :: Text -- ^ 'prolName'
    -> ProjectsRegionsOperationsList
projectsRegionsOperationsList pProlName_ =
  ProjectsRegionsOperationsList'
    { _prolXgafv = Nothing
    , _prolUploadProtocol = Nothing
    , _prolAccessToken = Nothing
    , _prolUploadType = Nothing
    , _prolName = pProlName_
    , _prolFilter = Nothing
    , _prolPageToken = Nothing
    , _prolPageSize = Nothing
    , _prolCallback = Nothing
    }


-- | V1 error format.
prolXgafv :: Lens' ProjectsRegionsOperationsList (Maybe Xgafv)
prolXgafv
  = lens _prolXgafv (\ s a -> s{_prolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prolUploadProtocol :: Lens' ProjectsRegionsOperationsList (Maybe Text)
prolUploadProtocol
  = lens _prolUploadProtocol
      (\ s a -> s{_prolUploadProtocol = a})

-- | OAuth access token.
prolAccessToken :: Lens' ProjectsRegionsOperationsList (Maybe Text)
prolAccessToken
  = lens _prolAccessToken
      (\ s a -> s{_prolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prolUploadType :: Lens' ProjectsRegionsOperationsList (Maybe Text)
prolUploadType
  = lens _prolUploadType
      (\ s a -> s{_prolUploadType = a})

-- | The name of the operation\'s parent resource.
prolName :: Lens' ProjectsRegionsOperationsList Text
prolName = lens _prolName (\ s a -> s{_prolName = a})

-- | The standard list filter.
prolFilter :: Lens' ProjectsRegionsOperationsList (Maybe Text)
prolFilter
  = lens _prolFilter (\ s a -> s{_prolFilter = a})

-- | The standard list page token.
prolPageToken :: Lens' ProjectsRegionsOperationsList (Maybe Text)
prolPageToken
  = lens _prolPageToken
      (\ s a -> s{_prolPageToken = a})

-- | The standard list page size.
prolPageSize :: Lens' ProjectsRegionsOperationsList (Maybe Int32)
prolPageSize
  = lens _prolPageSize (\ s a -> s{_prolPageSize = a})
      . mapping _Coerce

-- | JSONP
prolCallback :: Lens' ProjectsRegionsOperationsList (Maybe Text)
prolCallback
  = lens _prolCallback (\ s a -> s{_prolCallback = a})

instance GoogleRequest ProjectsRegionsOperationsList
         where
        type Rs ProjectsRegionsOperationsList =
             ListOperationsResponse
        type Scopes ProjectsRegionsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsRegionsOperationsList'{..}
          = go _prolName _prolXgafv _prolUploadProtocol
              _prolAccessToken
              _prolUploadType
              _prolFilter
              _prolPageToken
              _prolPageSize
              _prolCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsOperationsListResource)
                      mempty
