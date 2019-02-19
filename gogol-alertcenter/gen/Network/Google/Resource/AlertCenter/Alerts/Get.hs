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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified alert. Attempting to get a nonexistent alert returns
-- \`NOT_FOUND\` error.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ G Suite Alert Center API Reference> for @alertcenter.alerts.get@.
module Network.Google.Resource.AlertCenter.Alerts.Get
    (
    -- * REST Resource
      AlertsGetResource

    -- * Creating a Request
    , alertsGet
    , AlertsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agAccessToken
    , agAlertId
    , agUploadType
    , agCustomerId
    , agCallback
    ) where

import           Network.Google.AlertCenter.Types
import           Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.get@ method which the
-- 'AlertsGet' request conforms to.
type AlertsGetResource =
     "v1beta1" :>
       "alerts" :>
         Capture "alertId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "customerId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Alert

-- | Gets the specified alert. Attempting to get a nonexistent alert returns
-- \`NOT_FOUND\` error.
--
-- /See:/ 'alertsGet' smart constructor.
data AlertsGet =
  AlertsGet'
    { _agXgafv          :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agAccessToken    :: !(Maybe Text)
    , _agAlertId        :: !Text
    , _agUploadType     :: !(Maybe Text)
    , _agCustomerId     :: !(Maybe Text)
    , _agCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agAccessToken'
--
-- * 'agAlertId'
--
-- * 'agUploadType'
--
-- * 'agCustomerId'
--
-- * 'agCallback'
alertsGet
    :: Text -- ^ 'agAlertId'
    -> AlertsGet
alertsGet pAgAlertId_ =
  AlertsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agAccessToken = Nothing
    , _agAlertId = pAgAlertId_
    , _agUploadType = Nothing
    , _agCustomerId = Nothing
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' AlertsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AlertsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | OAuth access token.
agAccessToken :: Lens' AlertsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Required. The identifier of the alert to retrieve.
agAlertId :: Lens' AlertsGet Text
agAlertId
  = lens _agAlertId (\ s a -> s{_agAlertId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AlertsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | Optional. The unique identifier of the G Suite organization account of
-- the customer the alert is associated with. Inferred from the caller
-- identity if not provided.
agCustomerId :: Lens' AlertsGet (Maybe Text)
agCustomerId
  = lens _agCustomerId (\ s a -> s{_agCustomerId = a})

-- | JSONP
agCallback :: Lens' AlertsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AlertsGet where
        type Rs AlertsGet = Alert
        type Scopes AlertsGet =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsGet'{..}
          = go _agAlertId _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agCustomerId
              _agCallback
              (Just AltJSON)
              alertCenterService
          where go
                  = buildClient (Proxy :: Proxy AlertsGetResource)
                      mempty
