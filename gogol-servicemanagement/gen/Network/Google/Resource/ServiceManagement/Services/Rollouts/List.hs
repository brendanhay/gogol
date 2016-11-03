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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Rollouts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the history of the service configuration rollouts for a managed
-- service, from the newest to the oldest.
--
-- /See:/ <https://cloud.google.com/service-management/ Google Service Management API Reference> for @servicemanagement.services.rollouts.list@.
module Network.Google.Resource.ServiceManagement.Services.Rollouts.List
    (
    -- * REST Resource
      ServicesRolloutsListResource

    -- * Creating a Request
    , servicesRolloutsList
    , ServicesRolloutsList

    -- * Request Lenses
    , srlXgafv
    , srlUploadProtocol
    , srlPp
    , srlAccessToken
    , srlUploadType
    , srlBearerToken
    , srlServiceName
    , srlPageToken
    , srlPageSize
    , srlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.rollouts.list@ method which the
-- 'ServicesRolloutsList' request conforms to.
type ServicesRolloutsListResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "rollouts" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListServiceRolloutsResponse

-- | Lists the history of the service configuration rollouts for a managed
-- service, from the newest to the oldest.
--
-- /See:/ 'servicesRolloutsList' smart constructor.
data ServicesRolloutsList = ServicesRolloutsList'
    { _srlXgafv          :: !(Maybe Xgafv)
    , _srlUploadProtocol :: !(Maybe Text)
    , _srlPp             :: !Bool
    , _srlAccessToken    :: !(Maybe Text)
    , _srlUploadType     :: !(Maybe Text)
    , _srlBearerToken    :: !(Maybe Text)
    , _srlServiceName    :: !Text
    , _srlPageToken      :: !(Maybe Text)
    , _srlPageSize       :: !(Maybe (Textual Int32))
    , _srlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ServicesRolloutsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srlXgafv'
--
-- * 'srlUploadProtocol'
--
-- * 'srlPp'
--
-- * 'srlAccessToken'
--
-- * 'srlUploadType'
--
-- * 'srlBearerToken'
--
-- * 'srlServiceName'
--
-- * 'srlPageToken'
--
-- * 'srlPageSize'
--
-- * 'srlCallback'
servicesRolloutsList
    :: Text -- ^ 'srlServiceName'
    -> ServicesRolloutsList
servicesRolloutsList pSrlServiceName_ =
    ServicesRolloutsList'
    { _srlXgafv = Nothing
    , _srlUploadProtocol = Nothing
    , _srlPp = True
    , _srlAccessToken = Nothing
    , _srlUploadType = Nothing
    , _srlBearerToken = Nothing
    , _srlServiceName = pSrlServiceName_
    , _srlPageToken = Nothing
    , _srlPageSize = Nothing
    , _srlCallback = Nothing
    }

-- | V1 error format.
srlXgafv :: Lens' ServicesRolloutsList (Maybe Xgafv)
srlXgafv = lens _srlXgafv (\ s a -> s{_srlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srlUploadProtocol :: Lens' ServicesRolloutsList (Maybe Text)
srlUploadProtocol
  = lens _srlUploadProtocol
      (\ s a -> s{_srlUploadProtocol = a})

-- | Pretty-print response.
srlPp :: Lens' ServicesRolloutsList Bool
srlPp = lens _srlPp (\ s a -> s{_srlPp = a})

-- | OAuth access token.
srlAccessToken :: Lens' ServicesRolloutsList (Maybe Text)
srlAccessToken
  = lens _srlAccessToken
      (\ s a -> s{_srlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srlUploadType :: Lens' ServicesRolloutsList (Maybe Text)
srlUploadType
  = lens _srlUploadType
      (\ s a -> s{_srlUploadType = a})

-- | OAuth bearer token.
srlBearerToken :: Lens' ServicesRolloutsList (Maybe Text)
srlBearerToken
  = lens _srlBearerToken
      (\ s a -> s{_srlBearerToken = a})

-- | The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
srlServiceName :: Lens' ServicesRolloutsList Text
srlServiceName
  = lens _srlServiceName
      (\ s a -> s{_srlServiceName = a})

-- | The token of the page to retrieve.
srlPageToken :: Lens' ServicesRolloutsList (Maybe Text)
srlPageToken
  = lens _srlPageToken (\ s a -> s{_srlPageToken = a})

-- | The max number of items to include in the response list.
srlPageSize :: Lens' ServicesRolloutsList (Maybe Int32)
srlPageSize
  = lens _srlPageSize (\ s a -> s{_srlPageSize = a}) .
      mapping _Coerce

-- | JSONP
srlCallback :: Lens' ServicesRolloutsList (Maybe Text)
srlCallback
  = lens _srlCallback (\ s a -> s{_srlCallback = a})

instance GoogleRequest ServicesRolloutsList where
        type Rs ServicesRolloutsList =
             ListServiceRolloutsResponse
        type Scopes ServicesRolloutsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesRolloutsList'{..}
          = go _srlServiceName _srlXgafv _srlUploadProtocol
              (Just _srlPp)
              _srlAccessToken
              _srlUploadType
              _srlBearerToken
              _srlPageToken
              _srlPageSize
              _srlCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesRolloutsListResource)
                      mempty
