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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Find the tenancy unit for a managed service and service consumer. This
-- method shouldn\'t be used in a service producer\'s runtime path, for
-- example to find the tenant project number when creating VMs. Service
-- producers must persist the tenant project\'s information after the
-- project is created.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.list@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.List
    (
    -- * REST Resource
      ServicesTenancyUnitsListResource

    -- * Creating a Request
    , servicesTenancyUnitsList
    , ServicesTenancyUnitsList

    -- * Request Lenses
    , stulParent
    , stulXgafv
    , stulUploadProtocol
    , stulAccessToken
    , stulUploadType
    , stulFilter
    , stulPageToken
    , stulPageSize
    , stulCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.list@ method which the
-- 'ServicesTenancyUnitsList' request conforms to.
type ServicesTenancyUnitsListResource =
     "v1" :>
       Capture "parent" Text :>
         "tenancyUnits" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTenancyUnitsResponse

-- | Find the tenancy unit for a managed service and service consumer. This
-- method shouldn\'t be used in a service producer\'s runtime path, for
-- example to find the tenant project number when creating VMs. Service
-- producers must persist the tenant project\'s information after the
-- project is created.
--
-- /See:/ 'servicesTenancyUnitsList' smart constructor.
data ServicesTenancyUnitsList =
  ServicesTenancyUnitsList'
    { _stulParent         :: !Text
    , _stulXgafv          :: !(Maybe Xgafv)
    , _stulUploadProtocol :: !(Maybe Text)
    , _stulAccessToken    :: !(Maybe Text)
    , _stulUploadType     :: !(Maybe Text)
    , _stulFilter         :: !(Maybe Text)
    , _stulPageToken      :: !(Maybe Text)
    , _stulPageSize       :: !(Maybe (Textual Int32))
    , _stulCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stulParent'
--
-- * 'stulXgafv'
--
-- * 'stulUploadProtocol'
--
-- * 'stulAccessToken'
--
-- * 'stulUploadType'
--
-- * 'stulFilter'
--
-- * 'stulPageToken'
--
-- * 'stulPageSize'
--
-- * 'stulCallback'
servicesTenancyUnitsList
    :: Text -- ^ 'stulParent'
    -> ServicesTenancyUnitsList
servicesTenancyUnitsList pStulParent_ =
  ServicesTenancyUnitsList'
    { _stulParent = pStulParent_
    , _stulXgafv = Nothing
    , _stulUploadProtocol = Nothing
    , _stulAccessToken = Nothing
    , _stulUploadType = Nothing
    , _stulFilter = Nothing
    , _stulPageToken = Nothing
    , _stulPageSize = Nothing
    , _stulCallback = Nothing
    }


-- | Managed service and service consumer. Required.
-- services\/{service}\/{collection id}\/{resource id} {collection id} is
-- the cloud resource collection type representing the service consumer,
-- for example \'projects\', or \'organizations\'. {resource id} is the
-- consumer numeric id, such as project number: \'123456\'. {service} the
-- name of a service, such as \'service.googleapis.com\'.
stulParent :: Lens' ServicesTenancyUnitsList Text
stulParent
  = lens _stulParent (\ s a -> s{_stulParent = a})

-- | V1 error format.
stulXgafv :: Lens' ServicesTenancyUnitsList (Maybe Xgafv)
stulXgafv
  = lens _stulXgafv (\ s a -> s{_stulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
stulUploadProtocol :: Lens' ServicesTenancyUnitsList (Maybe Text)
stulUploadProtocol
  = lens _stulUploadProtocol
      (\ s a -> s{_stulUploadProtocol = a})

-- | OAuth access token.
stulAccessToken :: Lens' ServicesTenancyUnitsList (Maybe Text)
stulAccessToken
  = lens _stulAccessToken
      (\ s a -> s{_stulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
stulUploadType :: Lens' ServicesTenancyUnitsList (Maybe Text)
stulUploadType
  = lens _stulUploadType
      (\ s a -> s{_stulUploadType = a})

-- | Filter expression over tenancy resources field. Optional.
stulFilter :: Lens' ServicesTenancyUnitsList (Maybe Text)
stulFilter
  = lens _stulFilter (\ s a -> s{_stulFilter = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
stulPageToken :: Lens' ServicesTenancyUnitsList (Maybe Text)
stulPageToken
  = lens _stulPageToken
      (\ s a -> s{_stulPageToken = a})

-- | The maximum number of results returned by this request.
stulPageSize :: Lens' ServicesTenancyUnitsList (Maybe Int32)
stulPageSize
  = lens _stulPageSize (\ s a -> s{_stulPageSize = a})
      . mapping _Coerce

-- | JSONP
stulCallback :: Lens' ServicesTenancyUnitsList (Maybe Text)
stulCallback
  = lens _stulCallback (\ s a -> s{_stulCallback = a})

instance GoogleRequest ServicesTenancyUnitsList where
        type Rs ServicesTenancyUnitsList =
             ListTenancyUnitsResponse
        type Scopes ServicesTenancyUnitsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesTenancyUnitsList'{..}
          = go _stulParent _stulXgafv _stulUploadProtocol
              _stulAccessToken
              _stulUploadType
              _stulFilter
              _stulPageToken
              _stulPageSize
              _stulCallback
              (Just AltJSON)
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesTenancyUnitsListResource)
                      mempty
