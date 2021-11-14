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
-- Module      : Network.Google.Resource.Reseller.Resellernotify.Register
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a Reseller for receiving notifications.
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.resellernotify.register@.
module Network.Google.Resource.Reseller.Resellernotify.Register
    (
    -- * REST Resource
      ResellernotifyRegisterResource

    -- * Creating a Request
    , resellernotifyRegister
    , ResellernotifyRegister

    -- * Request Lenses
    , rrXgafv
    , rrUploadProtocol
    , rrAccessToken
    , rrUploadType
    , rrServiceAccountEmailAddress
    , rrCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.resellernotify.register@ method which the
-- 'ResellernotifyRegister' request conforms to.
type ResellernotifyRegisterResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "resellernotify" :>
             "register" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "serviceAccountEmailAddress" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] ResellernotifyResource

-- | Registers a Reseller for receiving notifications.
--
-- /See:/ 'resellernotifyRegister' smart constructor.
data ResellernotifyRegister =
  ResellernotifyRegister'
    { _rrXgafv :: !(Maybe Xgafv)
    , _rrUploadProtocol :: !(Maybe Text)
    , _rrAccessToken :: !(Maybe Text)
    , _rrUploadType :: !(Maybe Text)
    , _rrServiceAccountEmailAddress :: !(Maybe Text)
    , _rrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResellernotifyRegister' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrXgafv'
--
-- * 'rrUploadProtocol'
--
-- * 'rrAccessToken'
--
-- * 'rrUploadType'
--
-- * 'rrServiceAccountEmailAddress'
--
-- * 'rrCallback'
resellernotifyRegister
    :: ResellernotifyRegister
resellernotifyRegister =
  ResellernotifyRegister'
    { _rrXgafv = Nothing
    , _rrUploadProtocol = Nothing
    , _rrAccessToken = Nothing
    , _rrUploadType = Nothing
    , _rrServiceAccountEmailAddress = Nothing
    , _rrCallback = Nothing
    }


-- | V1 error format.
rrXgafv :: Lens' ResellernotifyRegister (Maybe Xgafv)
rrXgafv = lens _rrXgafv (\ s a -> s{_rrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rrUploadProtocol :: Lens' ResellernotifyRegister (Maybe Text)
rrUploadProtocol
  = lens _rrUploadProtocol
      (\ s a -> s{_rrUploadProtocol = a})

-- | OAuth access token.
rrAccessToken :: Lens' ResellernotifyRegister (Maybe Text)
rrAccessToken
  = lens _rrAccessToken
      (\ s a -> s{_rrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rrUploadType :: Lens' ResellernotifyRegister (Maybe Text)
rrUploadType
  = lens _rrUploadType (\ s a -> s{_rrUploadType = a})

-- | The service account which will own the created Cloud-PubSub topic.
rrServiceAccountEmailAddress :: Lens' ResellernotifyRegister (Maybe Text)
rrServiceAccountEmailAddress
  = lens _rrServiceAccountEmailAddress
      (\ s a -> s{_rrServiceAccountEmailAddress = a})

-- | JSONP
rrCallback :: Lens' ResellernotifyRegister (Maybe Text)
rrCallback
  = lens _rrCallback (\ s a -> s{_rrCallback = a})

instance GoogleRequest ResellernotifyRegister where
        type Rs ResellernotifyRegister =
             ResellernotifyResource
        type Scopes ResellernotifyRegister =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient ResellernotifyRegister'{..}
          = go _rrXgafv _rrUploadProtocol _rrAccessToken
              _rrUploadType
              _rrServiceAccountEmailAddress
              _rrCallback
              (Just AltJSON)
              appsResellerService
          where go
                  = buildClient
                      (Proxy :: Proxy ResellernotifyRegisterResource)
                      mempty
