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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search tenancy units for a managed service.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.search@.
module Network.Google.Resource.ServiceConsumerManagement.Services.Search
    (
    -- * REST Resource
      ServicesSearchResource

    -- * Creating a Request
    , servicesSearch
    , ServicesSearch

    -- * Request Lenses
    , ssParent
    , ssXgafv
    , ssUploadProtocol
    , ssAccessToken
    , ssUploadType
    , ssQuery
    , ssPageToken
    , ssPageSize
    , ssCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.search@ method which the
-- 'ServicesSearch' request conforms to.
type ServicesSearchResource =
     "v1" :>
       CaptureMode "parent" "search" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "query" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SearchTenancyUnitsResponse

-- | Search tenancy units for a managed service.
--
-- /See:/ 'servicesSearch' smart constructor.
data ServicesSearch =
  ServicesSearch'
    { _ssParent         :: !Text
    , _ssXgafv          :: !(Maybe Xgafv)
    , _ssUploadProtocol :: !(Maybe Text)
    , _ssAccessToken    :: !(Maybe Text)
    , _ssUploadType     :: !(Maybe Text)
    , _ssQuery          :: !(Maybe Text)
    , _ssPageToken      :: !(Maybe Text)
    , _ssPageSize       :: !(Maybe (Textual Int32))
    , _ssCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssParent'
--
-- * 'ssXgafv'
--
-- * 'ssUploadProtocol'
--
-- * 'ssAccessToken'
--
-- * 'ssUploadType'
--
-- * 'ssQuery'
--
-- * 'ssPageToken'
--
-- * 'ssPageSize'
--
-- * 'ssCallback'
servicesSearch
    :: Text -- ^ 'ssParent'
    -> ServicesSearch
servicesSearch pSsParent_ =
  ServicesSearch'
    { _ssParent = pSsParent_
    , _ssXgafv = Nothing
    , _ssUploadProtocol = Nothing
    , _ssAccessToken = Nothing
    , _ssUploadType = Nothing
    , _ssQuery = Nothing
    , _ssPageToken = Nothing
    , _ssPageSize = Nothing
    , _ssCallback = Nothing
    }


-- | Service for which search is performed. services\/{service} {service} the
-- name of a service, for example \'service.googleapis.com\'.
ssParent :: Lens' ServicesSearch Text
ssParent = lens _ssParent (\ s a -> s{_ssParent = a})

-- | V1 error format.
ssXgafv :: Lens' ServicesSearch (Maybe Xgafv)
ssXgafv = lens _ssXgafv (\ s a -> s{_ssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssUploadProtocol :: Lens' ServicesSearch (Maybe Text)
ssUploadProtocol
  = lens _ssUploadProtocol
      (\ s a -> s{_ssUploadProtocol = a})

-- | OAuth access token.
ssAccessToken :: Lens' ServicesSearch (Maybe Text)
ssAccessToken
  = lens _ssAccessToken
      (\ s a -> s{_ssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssUploadType :: Lens' ServicesSearch (Maybe Text)
ssUploadType
  = lens _ssUploadType (\ s a -> s{_ssUploadType = a})

-- | Set a query \`{expression}\` for querying tenancy units. Your
-- \`{expression}\` must be in the format: \`field_name=literal_string\`.
-- The \`field_name\` is the name of the field you want to compare.
-- Supported fields are \`tenant_resources.tag\` and
-- \`tenant_resources.resource\`. For example, to search tenancy units that
-- contain at least one tenant resource with a given tag \'xyz\', use the
-- query \`tenant_resources.tag=xyz\`. To search tenancy units that contain
-- at least one tenant resource with a given resource name
-- \'projects\/123456\', use the query
-- \`tenant_resources.resource=projects\/123456\`. Multiple expressions can
-- be joined with \`AND\`s. Tenancy units must match all expressions to be
-- included in the result set. For example, \`tenant_resources.tag=xyz AND
-- tenant_resources.resource=projects\/123456\` Optional.
ssQuery :: Lens' ServicesSearch (Maybe Text)
ssQuery = lens _ssQuery (\ s a -> s{_ssQuery = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response. Optional.
ssPageToken :: Lens' ServicesSearch (Maybe Text)
ssPageToken
  = lens _ssPageToken (\ s a -> s{_ssPageToken = a})

-- | The maximum number of results returned by this request. Currently, the
-- default maximum is set to 1000. If \`page_size\` isn\'t provided or the
-- size provided is a number larger than 1000, it\'s automatically set to
-- 1000. Optional.
ssPageSize :: Lens' ServicesSearch (Maybe Int32)
ssPageSize
  = lens _ssPageSize (\ s a -> s{_ssPageSize = a}) .
      mapping _Coerce

-- | JSONP
ssCallback :: Lens' ServicesSearch (Maybe Text)
ssCallback
  = lens _ssCallback (\ s a -> s{_ssCallback = a})

instance GoogleRequest ServicesSearch where
        type Rs ServicesSearch = SearchTenancyUnitsResponse
        type Scopes ServicesSearch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesSearch'{..}
          = go _ssParent _ssXgafv _ssUploadProtocol
              _ssAccessToken
              _ssUploadType
              _ssQuery
              _ssPageToken
              _ssPageSize
              _ssCallback
              (Just AltJSON)
              serviceConsumerManagementService
          where go
                  = buildClient (Proxy :: Proxy ServicesSearchResource)
                      mempty
