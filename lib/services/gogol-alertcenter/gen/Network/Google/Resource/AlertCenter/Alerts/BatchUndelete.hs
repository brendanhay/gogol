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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.BatchUndelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs batch undelete operation on alerts.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.batchUndelete@.
module Network.Google.Resource.AlertCenter.Alerts.BatchUndelete
    (
    -- * REST Resource
      AlertsBatchUndeleteResource

    -- * Creating a Request
    , alertsBatchUndelete
    , AlertsBatchUndelete

    -- * Request Lenses
    , abuXgafv
    , abuUploadProtocol
    , abuAccessToken
    , abuUploadType
    , abuPayload
    , abuCallback
    ) where

import Network.Google.AlertCenter.Types
import Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.batchUndelete@ method which the
-- 'AlertsBatchUndelete' request conforms to.
type AlertsBatchUndeleteResource =
     "v1beta1" :>
       "alerts:batchUndelete" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchUndeleteAlertsRequest :>
                       Post '[JSON] BatchUndeleteAlertsResponse

-- | Performs batch undelete operation on alerts.
--
-- /See:/ 'alertsBatchUndelete' smart constructor.
data AlertsBatchUndelete =
  AlertsBatchUndelete'
    { _abuXgafv :: !(Maybe Xgafv)
    , _abuUploadProtocol :: !(Maybe Text)
    , _abuAccessToken :: !(Maybe Text)
    , _abuUploadType :: !(Maybe Text)
    , _abuPayload :: !BatchUndeleteAlertsRequest
    , _abuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertsBatchUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abuXgafv'
--
-- * 'abuUploadProtocol'
--
-- * 'abuAccessToken'
--
-- * 'abuUploadType'
--
-- * 'abuPayload'
--
-- * 'abuCallback'
alertsBatchUndelete
    :: BatchUndeleteAlertsRequest -- ^ 'abuPayload'
    -> AlertsBatchUndelete
alertsBatchUndelete pAbuPayload_ =
  AlertsBatchUndelete'
    { _abuXgafv = Nothing
    , _abuUploadProtocol = Nothing
    , _abuAccessToken = Nothing
    , _abuUploadType = Nothing
    , _abuPayload = pAbuPayload_
    , _abuCallback = Nothing
    }


-- | V1 error format.
abuXgafv :: Lens' AlertsBatchUndelete (Maybe Xgafv)
abuXgafv = lens _abuXgafv (\ s a -> s{_abuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
abuUploadProtocol :: Lens' AlertsBatchUndelete (Maybe Text)
abuUploadProtocol
  = lens _abuUploadProtocol
      (\ s a -> s{_abuUploadProtocol = a})

-- | OAuth access token.
abuAccessToken :: Lens' AlertsBatchUndelete (Maybe Text)
abuAccessToken
  = lens _abuAccessToken
      (\ s a -> s{_abuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
abuUploadType :: Lens' AlertsBatchUndelete (Maybe Text)
abuUploadType
  = lens _abuUploadType
      (\ s a -> s{_abuUploadType = a})

-- | Multipart request metadata.
abuPayload :: Lens' AlertsBatchUndelete BatchUndeleteAlertsRequest
abuPayload
  = lens _abuPayload (\ s a -> s{_abuPayload = a})

-- | JSONP
abuCallback :: Lens' AlertsBatchUndelete (Maybe Text)
abuCallback
  = lens _abuCallback (\ s a -> s{_abuCallback = a})

instance GoogleRequest AlertsBatchUndelete where
        type Rs AlertsBatchUndelete =
             BatchUndeleteAlertsResponse
        type Scopes AlertsBatchUndelete =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsBatchUndelete'{..}
          = go _abuXgafv _abuUploadProtocol _abuAccessToken
              _abuUploadType
              _abuCallback
              (Just AltJSON)
              _abuPayload
              alertCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy AlertsBatchUndeleteResource)
                      mempty
