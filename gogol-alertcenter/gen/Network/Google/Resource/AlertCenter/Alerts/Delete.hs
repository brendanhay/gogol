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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks the specified alert for deletion. An alert that has been marked
-- for deletion is removed from Alert Center after 30 days. Marking an
-- alert for deletion has no effect on an alert which has already been
-- marked for deletion. Attempting to mark a nonexistent alert for deletion
-- results in a \`NOT_FOUND\` error.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ G Suite Alert Center API Reference> for @alertcenter.alerts.delete@.
module Network.Google.Resource.AlertCenter.Alerts.Delete
    (
    -- * REST Resource
      AlertsDeleteResource

    -- * Creating a Request
    , alertsDelete
    , AlertsDelete

    -- * Request Lenses
    , adXgafv
    , adUploadProtocol
    , adAccessToken
    , adAlertId
    , adUploadType
    , adCustomerId
    , adCallback
    ) where

import           Network.Google.AlertCenter.Types
import           Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.delete@ method which the
-- 'AlertsDelete' request conforms to.
type AlertsDeleteResource =
     "v1beta1" :>
       "alerts" :>
         Capture "alertId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "customerId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Marks the specified alert for deletion. An alert that has been marked
-- for deletion is removed from Alert Center after 30 days. Marking an
-- alert for deletion has no effect on an alert which has already been
-- marked for deletion. Attempting to mark a nonexistent alert for deletion
-- results in a \`NOT_FOUND\` error.
--
-- /See:/ 'alertsDelete' smart constructor.
data AlertsDelete = AlertsDelete'
    { _adXgafv          :: !(Maybe Xgafv)
    , _adUploadProtocol :: !(Maybe Text)
    , _adAccessToken    :: !(Maybe Text)
    , _adAlertId        :: !Text
    , _adUploadType     :: !(Maybe Text)
    , _adCustomerId     :: !(Maybe Text)
    , _adCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adXgafv'
--
-- * 'adUploadProtocol'
--
-- * 'adAccessToken'
--
-- * 'adAlertId'
--
-- * 'adUploadType'
--
-- * 'adCustomerId'
--
-- * 'adCallback'
alertsDelete
    :: Text -- ^ 'adAlertId'
    -> AlertsDelete
alertsDelete pAdAlertId_ =
    AlertsDelete'
    { _adXgafv = Nothing
    , _adUploadProtocol = Nothing
    , _adAccessToken = Nothing
    , _adAlertId = pAdAlertId_
    , _adUploadType = Nothing
    , _adCustomerId = Nothing
    , _adCallback = Nothing
    }

-- | V1 error format.
adXgafv :: Lens' AlertsDelete (Maybe Xgafv)
adXgafv = lens _adXgafv (\ s a -> s{_adXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adUploadProtocol :: Lens' AlertsDelete (Maybe Text)
adUploadProtocol
  = lens _adUploadProtocol
      (\ s a -> s{_adUploadProtocol = a})

-- | OAuth access token.
adAccessToken :: Lens' AlertsDelete (Maybe Text)
adAccessToken
  = lens _adAccessToken
      (\ s a -> s{_adAccessToken = a})

-- | Required. The identifier of the alert to delete.
adAlertId :: Lens' AlertsDelete Text
adAlertId
  = lens _adAlertId (\ s a -> s{_adAlertId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adUploadType :: Lens' AlertsDelete (Maybe Text)
adUploadType
  = lens _adUploadType (\ s a -> s{_adUploadType = a})

-- | Optional. The unique identifier of the G Suite organization account of
-- the customer the alert is associated with. Inferred from the caller
-- identity if not provided.
adCustomerId :: Lens' AlertsDelete (Maybe Text)
adCustomerId
  = lens _adCustomerId (\ s a -> s{_adCustomerId = a})

-- | JSONP
adCallback :: Lens' AlertsDelete (Maybe Text)
adCallback
  = lens _adCallback (\ s a -> s{_adCallback = a})

instance GoogleRequest AlertsDelete where
        type Rs AlertsDelete = Empty
        type Scopes AlertsDelete =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsDelete'{..}
          = go _adAlertId _adXgafv _adUploadProtocol
              _adAccessToken
              _adUploadType
              _adCustomerId
              _adCallback
              (Just AltJSON)
              alertCenterService
          where go
                  = buildClient (Proxy :: Proxy AlertsDeleteResource)
                      mempty
