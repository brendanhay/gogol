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
-- Module      : Network.Google.Resource.Reseller.Resellernotify.Unregister
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unregisters a Reseller for receiving notifications.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.resellernotify.unregister@.
module Network.Google.Resource.Reseller.Resellernotify.Unregister
    (
    -- * REST Resource
      ResellernotifyUnregisterResource

    -- * Creating a Request
    , resellernotifyUnregister
    , ResellernotifyUnregister

    -- * Request Lenses
    , ruXgafv
    , ruUploadProtocol
    , ruAccessToken
    , ruUploadType
    , ruServiceAccountEmailAddress
    , ruCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.resellernotify.unregister@ method which the
-- 'ResellernotifyUnregister' request conforms to.
type ResellernotifyUnregisterResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "resellernotify" :>
             "unregister" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "serviceAccountEmailAddress" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] ResellernotifyResource

-- | Unregisters a Reseller for receiving notifications.
--
-- /See:/ 'resellernotifyUnregister' smart constructor.
data ResellernotifyUnregister =
  ResellernotifyUnregister'
    { _ruXgafv :: !(Maybe Xgafv)
    , _ruUploadProtocol :: !(Maybe Text)
    , _ruAccessToken :: !(Maybe Text)
    , _ruUploadType :: !(Maybe Text)
    , _ruServiceAccountEmailAddress :: !(Maybe Text)
    , _ruCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResellernotifyUnregister' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruXgafv'
--
-- * 'ruUploadProtocol'
--
-- * 'ruAccessToken'
--
-- * 'ruUploadType'
--
-- * 'ruServiceAccountEmailAddress'
--
-- * 'ruCallback'
resellernotifyUnregister
    :: ResellernotifyUnregister
resellernotifyUnregister =
  ResellernotifyUnregister'
    { _ruXgafv = Nothing
    , _ruUploadProtocol = Nothing
    , _ruAccessToken = Nothing
    , _ruUploadType = Nothing
    , _ruServiceAccountEmailAddress = Nothing
    , _ruCallback = Nothing
    }


-- | V1 error format.
ruXgafv :: Lens' ResellernotifyUnregister (Maybe Xgafv)
ruXgafv = lens _ruXgafv (\ s a -> s{_ruXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ruUploadProtocol :: Lens' ResellernotifyUnregister (Maybe Text)
ruUploadProtocol
  = lens _ruUploadProtocol
      (\ s a -> s{_ruUploadProtocol = a})

-- | OAuth access token.
ruAccessToken :: Lens' ResellernotifyUnregister (Maybe Text)
ruAccessToken
  = lens _ruAccessToken
      (\ s a -> s{_ruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ruUploadType :: Lens' ResellernotifyUnregister (Maybe Text)
ruUploadType
  = lens _ruUploadType (\ s a -> s{_ruUploadType = a})

-- | The service account which owns the Cloud-PubSub topic.
ruServiceAccountEmailAddress :: Lens' ResellernotifyUnregister (Maybe Text)
ruServiceAccountEmailAddress
  = lens _ruServiceAccountEmailAddress
      (\ s a -> s{_ruServiceAccountEmailAddress = a})

-- | JSONP
ruCallback :: Lens' ResellernotifyUnregister (Maybe Text)
ruCallback
  = lens _ruCallback (\ s a -> s{_ruCallback = a})

instance GoogleRequest ResellernotifyUnregister where
        type Rs ResellernotifyUnregister =
             ResellernotifyResource
        type Scopes ResellernotifyUnregister =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient ResellernotifyUnregister'{..}
          = go _ruXgafv _ruUploadProtocol _ruAccessToken
              _ruUploadType
              _ruServiceAccountEmailAddress
              _ruCallback
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy ResellernotifyUnregisterResource)
                      mempty
