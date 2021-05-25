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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores, or \"undeletes\", an alert that was marked for deletion within
-- the past 30 days. Attempting to undelete an alert which was marked for
-- deletion over 30 days ago (which has been removed from the Alert Center
-- database) or a nonexistent alert returns a \`NOT_FOUND\` error.
-- Attempting to undelete an alert which has not been marked for deletion
-- has no effect.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.undelete@.
module Network.Google.Resource.AlertCenter.Alerts.Undelete
    (
    -- * REST Resource
      AlertsUndeleteResource

    -- * Creating a Request
    , alertsUndelete
    , AlertsUndelete

    -- * Request Lenses
    , auXgafv
    , auUploadProtocol
    , auAccessToken
    , auAlertId
    , auUploadType
    , auPayload
    , auCallback
    ) where

import Network.Google.AlertCenter.Types
import Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.undelete@ method which the
-- 'AlertsUndelete' request conforms to.
type AlertsUndeleteResource =
     "v1beta1" :>
       "alerts" :>
         CaptureMode "alertId" "undelete" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UndeleteAlertRequest :>
                         Post '[JSON] Alert

-- | Restores, or \"undeletes\", an alert that was marked for deletion within
-- the past 30 days. Attempting to undelete an alert which was marked for
-- deletion over 30 days ago (which has been removed from the Alert Center
-- database) or a nonexistent alert returns a \`NOT_FOUND\` error.
-- Attempting to undelete an alert which has not been marked for deletion
-- has no effect.
--
-- /See:/ 'alertsUndelete' smart constructor.
data AlertsUndelete =
  AlertsUndelete'
    { _auXgafv :: !(Maybe Xgafv)
    , _auUploadProtocol :: !(Maybe Text)
    , _auAccessToken :: !(Maybe Text)
    , _auAlertId :: !Text
    , _auUploadType :: !(Maybe Text)
    , _auPayload :: !UndeleteAlertRequest
    , _auCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auXgafv'
--
-- * 'auUploadProtocol'
--
-- * 'auAccessToken'
--
-- * 'auAlertId'
--
-- * 'auUploadType'
--
-- * 'auPayload'
--
-- * 'auCallback'
alertsUndelete
    :: Text -- ^ 'auAlertId'
    -> UndeleteAlertRequest -- ^ 'auPayload'
    -> AlertsUndelete
alertsUndelete pAuAlertId_ pAuPayload_ =
  AlertsUndelete'
    { _auXgafv = Nothing
    , _auUploadProtocol = Nothing
    , _auAccessToken = Nothing
    , _auAlertId = pAuAlertId_
    , _auUploadType = Nothing
    , _auPayload = pAuPayload_
    , _auCallback = Nothing
    }


-- | V1 error format.
auXgafv :: Lens' AlertsUndelete (Maybe Xgafv)
auXgafv = lens _auXgafv (\ s a -> s{_auXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auUploadProtocol :: Lens' AlertsUndelete (Maybe Text)
auUploadProtocol
  = lens _auUploadProtocol
      (\ s a -> s{_auUploadProtocol = a})

-- | OAuth access token.
auAccessToken :: Lens' AlertsUndelete (Maybe Text)
auAccessToken
  = lens _auAccessToken
      (\ s a -> s{_auAccessToken = a})

-- | Required. The identifier of the alert to undelete.
auAlertId :: Lens' AlertsUndelete Text
auAlertId
  = lens _auAlertId (\ s a -> s{_auAlertId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auUploadType :: Lens' AlertsUndelete (Maybe Text)
auUploadType
  = lens _auUploadType (\ s a -> s{_auUploadType = a})

-- | Multipart request metadata.
auPayload :: Lens' AlertsUndelete UndeleteAlertRequest
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | JSONP
auCallback :: Lens' AlertsUndelete (Maybe Text)
auCallback
  = lens _auCallback (\ s a -> s{_auCallback = a})

instance GoogleRequest AlertsUndelete where
        type Rs AlertsUndelete = Alert
        type Scopes AlertsUndelete =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsUndelete'{..}
          = go _auAlertId _auXgafv _auUploadProtocol
              _auAccessToken
              _auUploadType
              _auCallback
              (Just AltJSON)
              _auPayload
              alertCenterService
          where go
                  = buildClient (Proxy :: Proxy AlertsUndeleteResource)
                      mempty
