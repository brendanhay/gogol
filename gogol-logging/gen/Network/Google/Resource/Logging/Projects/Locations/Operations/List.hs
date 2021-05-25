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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Operations.List
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.operations.list@.
module Network.Google.Resource.Logging.Projects.Locations.Operations.List
    (
    -- * REST Resource
      ProjectsLocationsOperationsListResource

    -- * Creating a Request
    , projectsLocationsOperationsList
    , ProjectsLocationsOperationsList

    -- * Request Lenses
    , plolXgafv
    , plolUploadProtocol
    , plolAccessToken
    , plolUploadType
    , plolName
    , plolFilter
    , plolPageToken
    , plolPageSize
    , plolCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.operations.list@ method which the
-- 'ProjectsLocationsOperationsList' request conforms to.
type ProjectsLocationsOperationsListResource =
     "v2" :>
       Capture "name" Text :>
         "operations" :>
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
-- /See:/ 'projectsLocationsOperationsList' smart constructor.
data ProjectsLocationsOperationsList =
  ProjectsLocationsOperationsList'
    { _plolXgafv :: !(Maybe Xgafv)
    , _plolUploadProtocol :: !(Maybe Text)
    , _plolAccessToken :: !(Maybe Text)
    , _plolUploadType :: !(Maybe Text)
    , _plolName :: !Text
    , _plolFilter :: !(Maybe Text)
    , _plolPageToken :: !(Maybe Text)
    , _plolPageSize :: !(Maybe (Textual Int32))
    , _plolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plolXgafv'
--
-- * 'plolUploadProtocol'
--
-- * 'plolAccessToken'
--
-- * 'plolUploadType'
--
-- * 'plolName'
--
-- * 'plolFilter'
--
-- * 'plolPageToken'
--
-- * 'plolPageSize'
--
-- * 'plolCallback'
projectsLocationsOperationsList
    :: Text -- ^ 'plolName'
    -> ProjectsLocationsOperationsList
projectsLocationsOperationsList pPlolName_ =
  ProjectsLocationsOperationsList'
    { _plolXgafv = Nothing
    , _plolUploadProtocol = Nothing
    , _plolAccessToken = Nothing
    , _plolUploadType = Nothing
    , _plolName = pPlolName_
    , _plolFilter = Nothing
    , _plolPageToken = Nothing
    , _plolPageSize = Nothing
    , _plolCallback = Nothing
    }


-- | V1 error format.
plolXgafv :: Lens' ProjectsLocationsOperationsList (Maybe Xgafv)
plolXgafv
  = lens _plolXgafv (\ s a -> s{_plolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plolUploadProtocol :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolUploadProtocol
  = lens _plolUploadProtocol
      (\ s a -> s{_plolUploadProtocol = a})

-- | OAuth access token.
plolAccessToken :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolAccessToken
  = lens _plolAccessToken
      (\ s a -> s{_plolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plolUploadType :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolUploadType
  = lens _plolUploadType
      (\ s a -> s{_plolUploadType = a})

-- | The name of the operation\'s parent resource.
plolName :: Lens' ProjectsLocationsOperationsList Text
plolName = lens _plolName (\ s a -> s{_plolName = a})

-- | The standard list filter.
plolFilter :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolFilter
  = lens _plolFilter (\ s a -> s{_plolFilter = a})

-- | The standard list page token.
plolPageToken :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolPageToken
  = lens _plolPageToken
      (\ s a -> s{_plolPageToken = a})

-- | The standard list page size.
plolPageSize :: Lens' ProjectsLocationsOperationsList (Maybe Int32)
plolPageSize
  = lens _plolPageSize (\ s a -> s{_plolPageSize = a})
      . mapping _Coerce

-- | JSONP
plolCallback :: Lens' ProjectsLocationsOperationsList (Maybe Text)
plolCallback
  = lens _plolCallback (\ s a -> s{_plolCallback = a})

instance GoogleRequest
           ProjectsLocationsOperationsList
         where
        type Rs ProjectsLocationsOperationsList =
             ListOperationsResponse
        type Scopes ProjectsLocationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsLocationsOperationsList'{..}
          = go _plolName _plolXgafv _plolUploadProtocol
              _plolAccessToken
              _plolUploadType
              _plolFilter
              _plolPageToken
              _plolPageSize
              _plolCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsOperationsListResource)
                      mempty
