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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.List
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
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.operations.list@.
module Network.Google.Resource.AndroidManagement.Enterprises.Devices.Operations.List
    (
    -- * REST Resource
      EnterprisesDevicesOperationsListResource

    -- * Creating a Request
    , enterprisesDevicesOperationsList
    , EnterprisesDevicesOperationsList

    -- * Request Lenses
    , edolXgafv
    , edolUploadProtocol
    , edolAccessToken
    , edolUploadType
    , edolName
    , edolFilter
    , edolPageToken
    , edolPageSize
    , edolCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.devices.operations.list@ method which the
-- 'EnterprisesDevicesOperationsList' request conforms to.
type EnterprisesDevicesOperationsListResource =
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
-- /See:/ 'enterprisesDevicesOperationsList' smart constructor.
data EnterprisesDevicesOperationsList = EnterprisesDevicesOperationsList'
    { _edolXgafv          :: !(Maybe Xgafv)
    , _edolUploadProtocol :: !(Maybe Text)
    , _edolAccessToken    :: !(Maybe Text)
    , _edolUploadType     :: !(Maybe Text)
    , _edolName           :: !Text
    , _edolFilter         :: !(Maybe Text)
    , _edolPageToken      :: !(Maybe Text)
    , _edolPageSize       :: !(Maybe (Textual Int32))
    , _edolCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesDevicesOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edolXgafv'
--
-- * 'edolUploadProtocol'
--
-- * 'edolAccessToken'
--
-- * 'edolUploadType'
--
-- * 'edolName'
--
-- * 'edolFilter'
--
-- * 'edolPageToken'
--
-- * 'edolPageSize'
--
-- * 'edolCallback'
enterprisesDevicesOperationsList
    :: Text -- ^ 'edolName'
    -> EnterprisesDevicesOperationsList
enterprisesDevicesOperationsList pEdolName_ =
    EnterprisesDevicesOperationsList'
    { _edolXgafv = Nothing
    , _edolUploadProtocol = Nothing
    , _edolAccessToken = Nothing
    , _edolUploadType = Nothing
    , _edolName = pEdolName_
    , _edolFilter = Nothing
    , _edolPageToken = Nothing
    , _edolPageSize = Nothing
    , _edolCallback = Nothing
    }

-- | V1 error format.
edolXgafv :: Lens' EnterprisesDevicesOperationsList (Maybe Xgafv)
edolXgafv
  = lens _edolXgafv (\ s a -> s{_edolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edolUploadProtocol :: Lens' EnterprisesDevicesOperationsList (Maybe Text)
edolUploadProtocol
  = lens _edolUploadProtocol
      (\ s a -> s{_edolUploadProtocol = a})

-- | OAuth access token.
edolAccessToken :: Lens' EnterprisesDevicesOperationsList (Maybe Text)
edolAccessToken
  = lens _edolAccessToken
      (\ s a -> s{_edolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edolUploadType :: Lens' EnterprisesDevicesOperationsList (Maybe Text)
edolUploadType
  = lens _edolUploadType
      (\ s a -> s{_edolUploadType = a})

-- | The name of the operation\'s parent resource.
edolName :: Lens' EnterprisesDevicesOperationsList Text
edolName = lens _edolName (\ s a -> s{_edolName = a})

-- | The standard list filter.
edolFilter :: Lens' EnterprisesDevicesOperationsList (Maybe Text)
edolFilter
  = lens _edolFilter (\ s a -> s{_edolFilter = a})

-- | The standard list page token.
edolPageToken :: Lens' EnterprisesDevicesOperationsList (Maybe Text)
edolPageToken
  = lens _edolPageToken
      (\ s a -> s{_edolPageToken = a})

-- | The standard list page size.
edolPageSize :: Lens' EnterprisesDevicesOperationsList (Maybe Int32)
edolPageSize
  = lens _edolPageSize (\ s a -> s{_edolPageSize = a})
      . mapping _Coerce

-- | JSONP
edolCallback :: Lens' EnterprisesDevicesOperationsList (Maybe Text)
edolCallback
  = lens _edolCallback (\ s a -> s{_edolCallback = a})

instance GoogleRequest
         EnterprisesDevicesOperationsList where
        type Rs EnterprisesDevicesOperationsList =
             ListOperationsResponse
        type Scopes EnterprisesDevicesOperationsList =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesDevicesOperationsList'{..}
          = go _edolName _edolXgafv _edolUploadProtocol
              _edolAccessToken
              _edolUploadType
              _edolFilter
              _edolPageToken
              _edolPageSize
              _edolCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesDevicesOperationsListResource)
                      mempty
