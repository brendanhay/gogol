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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.List
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.operations.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.Operations.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsOperationsListResource

    -- * Creating a Request
    , projectsLocationsDataSetsOperationsList
    , ProjectsLocationsDataSetsOperationsList

    -- * Request Lenses
    , pldsolXgafv
    , pldsolUploadProtocol
    , pldsolAccessToken
    , pldsolUploadType
    , pldsolName
    , pldsolFilter
    , pldsolPageToken
    , pldsolPageSize
    , pldsolCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.operations.list@ method which the
-- 'ProjectsLocationsDataSetsOperationsList' request conforms to.
type ProjectsLocationsDataSetsOperationsListResource
     =
     "v1beta1" :>
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
-- /See:/ 'projectsLocationsDataSetsOperationsList' smart constructor.
data ProjectsLocationsDataSetsOperationsList =
  ProjectsLocationsDataSetsOperationsList'
    { _pldsolXgafv          :: !(Maybe Xgafv)
    , _pldsolUploadProtocol :: !(Maybe Text)
    , _pldsolAccessToken    :: !(Maybe Text)
    , _pldsolUploadType     :: !(Maybe Text)
    , _pldsolName           :: !Text
    , _pldsolFilter         :: !(Maybe Text)
    , _pldsolPageToken      :: !(Maybe Text)
    , _pldsolPageSize       :: !(Maybe (Textual Int32))
    , _pldsolCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsolXgafv'
--
-- * 'pldsolUploadProtocol'
--
-- * 'pldsolAccessToken'
--
-- * 'pldsolUploadType'
--
-- * 'pldsolName'
--
-- * 'pldsolFilter'
--
-- * 'pldsolPageToken'
--
-- * 'pldsolPageSize'
--
-- * 'pldsolCallback'
projectsLocationsDataSetsOperationsList
    :: Text -- ^ 'pldsolName'
    -> ProjectsLocationsDataSetsOperationsList
projectsLocationsDataSetsOperationsList pPldsolName_ =
  ProjectsLocationsDataSetsOperationsList'
    { _pldsolXgafv = Nothing
    , _pldsolUploadProtocol = Nothing
    , _pldsolAccessToken = Nothing
    , _pldsolUploadType = Nothing
    , _pldsolName = pPldsolName_
    , _pldsolFilter = Nothing
    , _pldsolPageToken = Nothing
    , _pldsolPageSize = Nothing
    , _pldsolCallback = Nothing
    }


-- | V1 error format.
pldsolXgafv :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Xgafv)
pldsolXgafv
  = lens _pldsolXgafv (\ s a -> s{_pldsolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsolUploadProtocol :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Text)
pldsolUploadProtocol
  = lens _pldsolUploadProtocol
      (\ s a -> s{_pldsolUploadProtocol = a})

-- | OAuth access token.
pldsolAccessToken :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Text)
pldsolAccessToken
  = lens _pldsolAccessToken
      (\ s a -> s{_pldsolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsolUploadType :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Text)
pldsolUploadType
  = lens _pldsolUploadType
      (\ s a -> s{_pldsolUploadType = a})

-- | The name of the operation\'s parent resource.
pldsolName :: Lens' ProjectsLocationsDataSetsOperationsList Text
pldsolName
  = lens _pldsolName (\ s a -> s{_pldsolName = a})

-- | The standard list filter.
pldsolFilter :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Text)
pldsolFilter
  = lens _pldsolFilter (\ s a -> s{_pldsolFilter = a})

-- | The standard list page token.
pldsolPageToken :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Text)
pldsolPageToken
  = lens _pldsolPageToken
      (\ s a -> s{_pldsolPageToken = a})

-- | The standard list page size.
pldsolPageSize :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Int32)
pldsolPageSize
  = lens _pldsolPageSize
      (\ s a -> s{_pldsolPageSize = a})
      . mapping _Coerce

-- | JSONP
pldsolCallback :: Lens' ProjectsLocationsDataSetsOperationsList (Maybe Text)
pldsolCallback
  = lens _pldsolCallback
      (\ s a -> s{_pldsolCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsOperationsList
         where
        type Rs ProjectsLocationsDataSetsOperationsList =
             ListOperationsResponse
        type Scopes ProjectsLocationsDataSetsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsOperationsList'{..}
          = go _pldsolName _pldsolXgafv _pldsolUploadProtocol
              _pldsolAccessToken
              _pldsolUploadType
              _pldsolFilter
              _pldsolPageToken
              _pldsolPageSize
              _pldsolCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsOperationsListResource)
                      mempty
