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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Register
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a previously unregistered beacon given its \`advertisedId\`.
-- These IDs are unique within the system. An ID can be registered only
-- once. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.register@.
module Network.Google.Resource.ProximityBeacon.Beacons.Register
    (
    -- * REST Resource
      BeaconsRegisterResource

    -- * Creating a Request
    , beaconsRegister
    , BeaconsRegister

    -- * Request Lenses
    , brXgafv
    , brUploadProtocol
    , brAccessToken
    , brUploadType
    , brPayload
    , brProjectId
    , brCallback
    ) where

import Network.Google.Prelude
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.register@ method which the
-- 'BeaconsRegister' request conforms to.
type BeaconsRegisterResource =
     "v1beta1" :>
       "beacons:register" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Beacon :> Post '[JSON] Beacon

-- | Registers a previously unregistered beacon given its \`advertisedId\`.
-- These IDs are unique within the system. An ID can be registered only
-- once. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsRegister' smart constructor.
data BeaconsRegister =
  BeaconsRegister'
    { _brXgafv :: !(Maybe Xgafv)
    , _brUploadProtocol :: !(Maybe Text)
    , _brAccessToken :: !(Maybe Text)
    , _brUploadType :: !(Maybe Text)
    , _brPayload :: !Beacon
    , _brProjectId :: !(Maybe Text)
    , _brCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeaconsRegister' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brXgafv'
--
-- * 'brUploadProtocol'
--
-- * 'brAccessToken'
--
-- * 'brUploadType'
--
-- * 'brPayload'
--
-- * 'brProjectId'
--
-- * 'brCallback'
beaconsRegister
    :: Beacon -- ^ 'brPayload'
    -> BeaconsRegister
beaconsRegister pBrPayload_ =
  BeaconsRegister'
    { _brXgafv = Nothing
    , _brUploadProtocol = Nothing
    , _brAccessToken = Nothing
    , _brUploadType = Nothing
    , _brPayload = pBrPayload_
    , _brProjectId = Nothing
    , _brCallback = Nothing
    }


-- | V1 error format.
brXgafv :: Lens' BeaconsRegister (Maybe Xgafv)
brXgafv = lens _brXgafv (\ s a -> s{_brXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
brUploadProtocol :: Lens' BeaconsRegister (Maybe Text)
brUploadProtocol
  = lens _brUploadProtocol
      (\ s a -> s{_brUploadProtocol = a})

-- | OAuth access token.
brAccessToken :: Lens' BeaconsRegister (Maybe Text)
brAccessToken
  = lens _brAccessToken
      (\ s a -> s{_brAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
brUploadType :: Lens' BeaconsRegister (Maybe Text)
brUploadType
  = lens _brUploadType (\ s a -> s{_brUploadType = a})

-- | Multipart request metadata.
brPayload :: Lens' BeaconsRegister Beacon
brPayload
  = lens _brPayload (\ s a -> s{_brPayload = a})

-- | The project id of the project the beacon will be registered to. If the
-- project id is not specified then the project making the request is used.
-- Optional.
brProjectId :: Lens' BeaconsRegister (Maybe Text)
brProjectId
  = lens _brProjectId (\ s a -> s{_brProjectId = a})

-- | JSONP
brCallback :: Lens' BeaconsRegister (Maybe Text)
brCallback
  = lens _brCallback (\ s a -> s{_brCallback = a})

instance GoogleRequest BeaconsRegister where
        type Rs BeaconsRegister = Beacon
        type Scopes BeaconsRegister =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsRegister'{..}
          = go _brXgafv _brUploadProtocol _brAccessToken
              _brUploadType
              _brProjectId
              _brCallback
              (Just AltJSON)
              _brPayload
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsRegisterResource)
                      mempty
