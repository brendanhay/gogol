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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the given data with the specified beacon. Attachment data
-- must contain two parts: - A namespaced type. - The actual attachment
-- data itself. The namespaced type consists of two parts, the namespace
-- and the type. The namespace must be one of the values returned by the
-- \`namespaces\` endpoint, while the type can be a string of any
-- characters except for the forward slash (\`\/\`) up to 100 characters in
-- length. Attachment data can be up to 1024 bytes long. Authenticate using
-- an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.create@.
module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Create
    (
    -- * REST Resource
      BeaconsAttachmentsCreateResource

    -- * Creating a Request
    , beaconsAttachmentsCreate
    , BeaconsAttachmentsCreate

    -- * Request Lenses
    , bacXgafv
    , bacUploadProtocol
    , bacPp
    , bacAccessToken
    , bacBeaconName
    , bacUploadType
    , bacPayload
    , bacBearerToken
    , bacProjectId
    , bacCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.create@ method which the
-- 'BeaconsAttachmentsCreate' request conforms to.
type BeaconsAttachmentsCreateResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         "attachments" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "projectId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] BeaconAttachment :>
                               Post '[JSON] BeaconAttachment

-- | Associates the given data with the specified beacon. Attachment data
-- must contain two parts: - A namespaced type. - The actual attachment
-- data itself. The namespaced type consists of two parts, the namespace
-- and the type. The namespace must be one of the values returned by the
-- \`namespaces\` endpoint, while the type can be a string of any
-- characters except for the forward slash (\`\/\`) up to 100 characters in
-- length. Attachment data can be up to 1024 bytes long. Authenticate using
-- an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsAttachmentsCreate' smart constructor.
data BeaconsAttachmentsCreate = BeaconsAttachmentsCreate'
    { _bacXgafv          :: !(Maybe Text)
    , _bacUploadProtocol :: !(Maybe Text)
    , _bacPp             :: !Bool
    , _bacAccessToken    :: !(Maybe Text)
    , _bacBeaconName     :: !Text
    , _bacUploadType     :: !(Maybe Text)
    , _bacPayload        :: !BeaconAttachment
    , _bacBearerToken    :: !(Maybe Text)
    , _bacProjectId      :: !(Maybe Text)
    , _bacCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsAttachmentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacXgafv'
--
-- * 'bacUploadProtocol'
--
-- * 'bacPp'
--
-- * 'bacAccessToken'
--
-- * 'bacBeaconName'
--
-- * 'bacUploadType'
--
-- * 'bacPayload'
--
-- * 'bacBearerToken'
--
-- * 'bacProjectId'
--
-- * 'bacCallback'
beaconsAttachmentsCreate
    :: Text -- ^ 'bacBeaconName'
    -> BeaconAttachment -- ^ 'bacPayload'
    -> BeaconsAttachmentsCreate
beaconsAttachmentsCreate pBacBeaconName_ pBacPayload_ =
    BeaconsAttachmentsCreate'
    { _bacXgafv = Nothing
    , _bacUploadProtocol = Nothing
    , _bacPp = True
    , _bacAccessToken = Nothing
    , _bacBeaconName = pBacBeaconName_
    , _bacUploadType = Nothing
    , _bacPayload = pBacPayload_
    , _bacBearerToken = Nothing
    , _bacProjectId = Nothing
    , _bacCallback = Nothing
    }

-- | V1 error format.
bacXgafv :: Lens' BeaconsAttachmentsCreate (Maybe Text)
bacXgafv = lens _bacXgafv (\ s a -> s{_bacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bacUploadProtocol :: Lens' BeaconsAttachmentsCreate (Maybe Text)
bacUploadProtocol
  = lens _bacUploadProtocol
      (\ s a -> s{_bacUploadProtocol = a})

-- | Pretty-print response.
bacPp :: Lens' BeaconsAttachmentsCreate Bool
bacPp = lens _bacPp (\ s a -> s{_bacPp = a})

-- | OAuth access token.
bacAccessToken :: Lens' BeaconsAttachmentsCreate (Maybe Text)
bacAccessToken
  = lens _bacAccessToken
      (\ s a -> s{_bacAccessToken = a})

-- | Beacon on which the attachment should be created. A beacon name has the
-- format \"beacons\/N!beaconId\" where the beaconId is the base16 ID
-- broadcast by the beacon and N is a code for the beacon\'s type. Possible
-- values are \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for
-- iBeacon, or \`5\` for AltBeacon. For Eddystone-EID beacons, you may use
-- either the current EID or the beacon\'s \"stable\" UID. Required.
bacBeaconName :: Lens' BeaconsAttachmentsCreate Text
bacBeaconName
  = lens _bacBeaconName
      (\ s a -> s{_bacBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bacUploadType :: Lens' BeaconsAttachmentsCreate (Maybe Text)
bacUploadType
  = lens _bacUploadType
      (\ s a -> s{_bacUploadType = a})

-- | Multipart request metadata.
bacPayload :: Lens' BeaconsAttachmentsCreate BeaconAttachment
bacPayload
  = lens _bacPayload (\ s a -> s{_bacPayload = a})

-- | OAuth bearer token.
bacBearerToken :: Lens' BeaconsAttachmentsCreate (Maybe Text)
bacBearerToken
  = lens _bacBearerToken
      (\ s a -> s{_bacBearerToken = a})

-- | The project id of the project the attachment will belong to. If the
-- project id is not specified then the project making the request is used.
-- Optional.
bacProjectId :: Lens' BeaconsAttachmentsCreate (Maybe Text)
bacProjectId
  = lens _bacProjectId (\ s a -> s{_bacProjectId = a})

-- | JSONP
bacCallback :: Lens' BeaconsAttachmentsCreate (Maybe Text)
bacCallback
  = lens _bacCallback (\ s a -> s{_bacCallback = a})

instance GoogleRequest BeaconsAttachmentsCreate where
        type Rs BeaconsAttachmentsCreate = BeaconAttachment
        type Scopes BeaconsAttachmentsCreate =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsAttachmentsCreate'{..}
          = go _bacBeaconName _bacXgafv _bacUploadProtocol
              (Just _bacPp)
              _bacAccessToken
              _bacUploadType
              _bacBearerToken
              _bacProjectId
              _bacCallback
              (Just AltJSON)
              _bacPayload
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsAttachmentsCreateResource)
                      mempty
