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
-- Module      : Network.Google.Resource.AlertCenter.Alerts.BatchDelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs batch delete operation on alerts.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.batchDelete@.
module Network.Google.Resource.AlertCenter.Alerts.BatchDelete
    (
    -- * REST Resource
      AlertsBatchDeleteResource

    -- * Creating a Request
    , alertsBatchDelete
    , AlertsBatchDelete

    -- * Request Lenses
    , abdXgafv
    , abdUploadProtocol
    , abdAccessToken
    , abdUploadType
    , abdPayload
    , abdCallback
    ) where

import Network.Google.AlertCenter.Types
import Network.Google.Prelude

-- | A resource alias for @alertcenter.alerts.batchDelete@ method which the
-- 'AlertsBatchDelete' request conforms to.
type AlertsBatchDeleteResource =
     "v1beta1" :>
       "alerts:batchDelete" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchDeleteAlertsRequest :>
                       Post '[JSON] BatchDeleteAlertsResponse

-- | Performs batch delete operation on alerts.
--
-- /See:/ 'alertsBatchDelete' smart constructor.
data AlertsBatchDelete =
  AlertsBatchDelete'
    { _abdXgafv :: !(Maybe Xgafv)
    , _abdUploadProtocol :: !(Maybe Text)
    , _abdAccessToken :: !(Maybe Text)
    , _abdUploadType :: !(Maybe Text)
    , _abdPayload :: !BatchDeleteAlertsRequest
    , _abdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AlertsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abdXgafv'
--
-- * 'abdUploadProtocol'
--
-- * 'abdAccessToken'
--
-- * 'abdUploadType'
--
-- * 'abdPayload'
--
-- * 'abdCallback'
alertsBatchDelete
    :: BatchDeleteAlertsRequest -- ^ 'abdPayload'
    -> AlertsBatchDelete
alertsBatchDelete pAbdPayload_ =
  AlertsBatchDelete'
    { _abdXgafv = Nothing
    , _abdUploadProtocol = Nothing
    , _abdAccessToken = Nothing
    , _abdUploadType = Nothing
    , _abdPayload = pAbdPayload_
    , _abdCallback = Nothing
    }


-- | V1 error format.
abdXgafv :: Lens' AlertsBatchDelete (Maybe Xgafv)
abdXgafv = lens _abdXgafv (\ s a -> s{_abdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
abdUploadProtocol :: Lens' AlertsBatchDelete (Maybe Text)
abdUploadProtocol
  = lens _abdUploadProtocol
      (\ s a -> s{_abdUploadProtocol = a})

-- | OAuth access token.
abdAccessToken :: Lens' AlertsBatchDelete (Maybe Text)
abdAccessToken
  = lens _abdAccessToken
      (\ s a -> s{_abdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
abdUploadType :: Lens' AlertsBatchDelete (Maybe Text)
abdUploadType
  = lens _abdUploadType
      (\ s a -> s{_abdUploadType = a})

-- | Multipart request metadata.
abdPayload :: Lens' AlertsBatchDelete BatchDeleteAlertsRequest
abdPayload
  = lens _abdPayload (\ s a -> s{_abdPayload = a})

-- | JSONP
abdCallback :: Lens' AlertsBatchDelete (Maybe Text)
abdCallback
  = lens _abdCallback (\ s a -> s{_abdCallback = a})

instance GoogleRequest AlertsBatchDelete where
        type Rs AlertsBatchDelete = BatchDeleteAlertsResponse
        type Scopes AlertsBatchDelete =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient AlertsBatchDelete'{..}
          = go _abdXgafv _abdUploadProtocol _abdAccessToken
              _abdUploadType
              _abdCallback
              (Just AltJSON)
              _abdPayload
              alertCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy AlertsBatchDeleteResource)
                      mempty
