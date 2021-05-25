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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.GetMetadata
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the metadata of an alert. Attempting to get metadata for a
-- non-existent alert returns \`NOT_FOUND\` error.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.getMetadata@.
module Network.Google.Resource.AlertCenter.Alerts.GetMetadata
    (
    -- * REST Resource
      AlertsGetMetadataResource

    -- * Creating a Request
    , alertsGetMetadata
    , AlertsGetMetadata

    -- * Request Lenses
    , agmXgafv
    , agmUploadProtocol
    , agmAccessToken
    , agmAlertId
    , agmUploadType
    , agmCustomerId
    , agmCallback
    ) where

import Network.Google.AlertCenter.Types
import Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.getMetadata@ method which the
-- 'AlertsGetMetadata' request conforms to.
type AlertsGetMetadataResource =
     "v1beta1" :>
       "alerts" :>
         Capture "alertId" Text :>
           "metadata" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "customerId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] AlertMetadata

-- | Returns the metadata of an alert. Attempting to get metadata for a
-- non-existent alert returns \`NOT_FOUND\` error.
--
-- /See:/ 'alertsGetMetadata' smart constructor.
data AlertsGetMetadata =
  AlertsGetMetadata'
    { _agmXgafv :: !(Maybe Xgafv)
    , _agmUploadProtocol :: !(Maybe Text)
    , _agmAccessToken :: !(Maybe Text)
    , _agmAlertId :: !Text
    , _agmUploadType :: !(Maybe Text)
    , _agmCustomerId :: !(Maybe Text)
    , _agmCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertsGetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agmXgafv'
--
-- * 'agmUploadProtocol'
--
-- * 'agmAccessToken'
--
-- * 'agmAlertId'
--
-- * 'agmUploadType'
--
-- * 'agmCustomerId'
--
-- * 'agmCallback'
alertsGetMetadata
    :: Text -- ^ 'agmAlertId'
    -> AlertsGetMetadata
alertsGetMetadata pAgmAlertId_ =
  AlertsGetMetadata'
    { _agmXgafv = Nothing
    , _agmUploadProtocol = Nothing
    , _agmAccessToken = Nothing
    , _agmAlertId = pAgmAlertId_
    , _agmUploadType = Nothing
    , _agmCustomerId = Nothing
    , _agmCallback = Nothing
    }


-- | V1 error format.
agmXgafv :: Lens' AlertsGetMetadata (Maybe Xgafv)
agmXgafv = lens _agmXgafv (\ s a -> s{_agmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agmUploadProtocol :: Lens' AlertsGetMetadata (Maybe Text)
agmUploadProtocol
  = lens _agmUploadProtocol
      (\ s a -> s{_agmUploadProtocol = a})

-- | OAuth access token.
agmAccessToken :: Lens' AlertsGetMetadata (Maybe Text)
agmAccessToken
  = lens _agmAccessToken
      (\ s a -> s{_agmAccessToken = a})

-- | Required. The identifier of the alert this metadata belongs to.
agmAlertId :: Lens' AlertsGetMetadata Text
agmAlertId
  = lens _agmAlertId (\ s a -> s{_agmAlertId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agmUploadType :: Lens' AlertsGetMetadata (Maybe Text)
agmUploadType
  = lens _agmUploadType
      (\ s a -> s{_agmUploadType = a})

-- | Optional. The unique identifier of the Google Workspace organization
-- account of the customer the alert metadata is associated with. Inferred
-- from the caller identity if not provided.
agmCustomerId :: Lens' AlertsGetMetadata (Maybe Text)
agmCustomerId
  = lens _agmCustomerId
      (\ s a -> s{_agmCustomerId = a})

-- | JSONP
agmCallback :: Lens' AlertsGetMetadata (Maybe Text)
agmCallback
  = lens _agmCallback (\ s a -> s{_agmCallback = a})

instance GoogleRequest AlertsGetMetadata where
        type Rs AlertsGetMetadata = AlertMetadata
        type Scopes AlertsGetMetadata =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsGetMetadata'{..}
          = go _agmAlertId _agmXgafv _agmUploadProtocol
              _agmAccessToken
              _agmUploadType
              _agmCustomerId
              _agmCallback
              (Just AltJSON)
              alertCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy AlertsGetMetadataResource)
                      mempty
