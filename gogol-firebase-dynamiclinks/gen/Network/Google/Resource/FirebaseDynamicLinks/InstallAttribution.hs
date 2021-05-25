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
-- Module      : Network.Google.Resource.FirebaseDynamicLinks.InstallAttribution
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get iOS strong\/weak-match info for post-install attribution.
--
-- /See:/ <https://firebase.google.com/docs/dynamic-links/ Firebase Dynamic Links API Reference> for @firebasedynamiclinks.installAttribution@.
module Network.Google.Resource.FirebaseDynamicLinks.InstallAttribution
    (
    -- * REST Resource
      InstallAttributionResource

    -- * Creating a Request
    , installAttribution
    , InstallAttribution

    -- * Request Lenses
    , iaXgafv
    , iaUploadProtocol
    , iaAccessToken
    , iaUploadType
    , iaPayload
    , iaCallback
    ) where

import Network.Google.FirebaseDynamicLinks.Types
import Network.Google.Prelude

-- | A resource alias for @firebasedynamiclinks.installAttribution@ method which the
-- 'InstallAttribution' request conforms to.
type InstallAttributionResource =
     "v1" :>
       "installAttribution" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIosPostInstallAttributionRequest
                       :> Post '[JSON] GetIosPostInstallAttributionResponse

-- | Get iOS strong\/weak-match info for post-install attribution.
--
-- /See:/ 'installAttribution' smart constructor.
data InstallAttribution =
  InstallAttribution'
    { _iaXgafv :: !(Maybe Xgafv)
    , _iaUploadProtocol :: !(Maybe Text)
    , _iaAccessToken :: !(Maybe Text)
    , _iaUploadType :: !(Maybe Text)
    , _iaPayload :: !GetIosPostInstallAttributionRequest
    , _iaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstallAttribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaXgafv'
--
-- * 'iaUploadProtocol'
--
-- * 'iaAccessToken'
--
-- * 'iaUploadType'
--
-- * 'iaPayload'
--
-- * 'iaCallback'
installAttribution
    :: GetIosPostInstallAttributionRequest -- ^ 'iaPayload'
    -> InstallAttribution
installAttribution pIaPayload_ =
  InstallAttribution'
    { _iaXgafv = Nothing
    , _iaUploadProtocol = Nothing
    , _iaAccessToken = Nothing
    , _iaUploadType = Nothing
    , _iaPayload = pIaPayload_
    , _iaCallback = Nothing
    }


-- | V1 error format.
iaXgafv :: Lens' InstallAttribution (Maybe Xgafv)
iaXgafv = lens _iaXgafv (\ s a -> s{_iaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iaUploadProtocol :: Lens' InstallAttribution (Maybe Text)
iaUploadProtocol
  = lens _iaUploadProtocol
      (\ s a -> s{_iaUploadProtocol = a})

-- | OAuth access token.
iaAccessToken :: Lens' InstallAttribution (Maybe Text)
iaAccessToken
  = lens _iaAccessToken
      (\ s a -> s{_iaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iaUploadType :: Lens' InstallAttribution (Maybe Text)
iaUploadType
  = lens _iaUploadType (\ s a -> s{_iaUploadType = a})

-- | Multipart request metadata.
iaPayload :: Lens' InstallAttribution GetIosPostInstallAttributionRequest
iaPayload
  = lens _iaPayload (\ s a -> s{_iaPayload = a})

-- | JSONP
iaCallback :: Lens' InstallAttribution (Maybe Text)
iaCallback
  = lens _iaCallback (\ s a -> s{_iaCallback = a})

instance GoogleRequest InstallAttribution where
        type Rs InstallAttribution =
             GetIosPostInstallAttributionResponse
        type Scopes InstallAttribution =
             '["https://www.googleapis.com/auth/firebase"]
        requestClient InstallAttribution'{..}
          = go _iaXgafv _iaUploadProtocol _iaAccessToken
              _iaUploadType
              _iaCallback
              (Just AltJSON)
              _iaPayload
              firebaseDynamicLinksService
          where go
                  = buildClient
                      (Proxy :: Proxy InstallAttributionResource)
                      mempty
