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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Operations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.operations.list@.
module Network.Google.Resource.Logging.Organizations.Locations.Operations.List
    (
    -- * REST Resource
      OrganizationsLocationsOperationsListResource

    -- * Creating a Request
    , organizationsLocationsOperationsList
    , OrganizationsLocationsOperationsList

    -- * Request Lenses
    , ololXgafv
    , ololUploadProtocol
    , ololAccessToken
    , ololUploadType
    , ololName
    , ololFilter
    , ololPageToken
    , ololPageSize
    , ololCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.operations.list@ method which the
-- 'OrganizationsLocationsOperationsList' request conforms to.
type OrganizationsLocationsOperationsListResource =
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
-- /See:/ 'organizationsLocationsOperationsList' smart constructor.
data OrganizationsLocationsOperationsList =
  OrganizationsLocationsOperationsList'
    { _ololXgafv :: !(Maybe Xgafv)
    , _ololUploadProtocol :: !(Maybe Text)
    , _ololAccessToken :: !(Maybe Text)
    , _ololUploadType :: !(Maybe Text)
    , _ololName :: !Text
    , _ololFilter :: !(Maybe Text)
    , _ololPageToken :: !(Maybe Text)
    , _ololPageSize :: !(Maybe (Textual Int32))
    , _ololCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ololXgafv'
--
-- * 'ololUploadProtocol'
--
-- * 'ololAccessToken'
--
-- * 'ololUploadType'
--
-- * 'ololName'
--
-- * 'ololFilter'
--
-- * 'ololPageToken'
--
-- * 'ololPageSize'
--
-- * 'ololCallback'
organizationsLocationsOperationsList
    :: Text -- ^ 'ololName'
    -> OrganizationsLocationsOperationsList
organizationsLocationsOperationsList pOlolName_ =
  OrganizationsLocationsOperationsList'
    { _ololXgafv = Nothing
    , _ololUploadProtocol = Nothing
    , _ololAccessToken = Nothing
    , _ololUploadType = Nothing
    , _ololName = pOlolName_
    , _ololFilter = Nothing
    , _ololPageToken = Nothing
    , _ololPageSize = Nothing
    , _ololCallback = Nothing
    }


-- | V1 error format.
ololXgafv :: Lens' OrganizationsLocationsOperationsList (Maybe Xgafv)
ololXgafv
  = lens _ololXgafv (\ s a -> s{_ololXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ololUploadProtocol :: Lens' OrganizationsLocationsOperationsList (Maybe Text)
ololUploadProtocol
  = lens _ololUploadProtocol
      (\ s a -> s{_ololUploadProtocol = a})

-- | OAuth access token.
ololAccessToken :: Lens' OrganizationsLocationsOperationsList (Maybe Text)
ololAccessToken
  = lens _ololAccessToken
      (\ s a -> s{_ololAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ololUploadType :: Lens' OrganizationsLocationsOperationsList (Maybe Text)
ololUploadType
  = lens _ololUploadType
      (\ s a -> s{_ololUploadType = a})

-- | The name of the operation\'s parent resource.
ololName :: Lens' OrganizationsLocationsOperationsList Text
ololName = lens _ololName (\ s a -> s{_ololName = a})

-- | The standard list filter.
ololFilter :: Lens' OrganizationsLocationsOperationsList (Maybe Text)
ololFilter
  = lens _ololFilter (\ s a -> s{_ololFilter = a})

-- | The standard list page token.
ololPageToken :: Lens' OrganizationsLocationsOperationsList (Maybe Text)
ololPageToken
  = lens _ololPageToken
      (\ s a -> s{_ololPageToken = a})

-- | The standard list page size.
ololPageSize :: Lens' OrganizationsLocationsOperationsList (Maybe Int32)
ololPageSize
  = lens _ololPageSize (\ s a -> s{_ololPageSize = a})
      . mapping _Coerce

-- | JSONP
ololCallback :: Lens' OrganizationsLocationsOperationsList (Maybe Text)
ololCallback
  = lens _ololCallback (\ s a -> s{_ololCallback = a})

instance GoogleRequest
           OrganizationsLocationsOperationsList
         where
        type Rs OrganizationsLocationsOperationsList =
             ListOperationsResponse
        type Scopes OrganizationsLocationsOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient
          OrganizationsLocationsOperationsList'{..}
          = go _ololName _ololXgafv _ololUploadProtocol
              _ololAccessToken
              _ololUploadType
              _ololFilter
              _ololPageToken
              _ololPageSize
              _ololCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsOperationsListResource)
                      mempty
