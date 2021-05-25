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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified attachment for the given beacon. Each attachment
-- has a unique attachment name (\`attachmentName\`) which is returned when
-- you fetch the attachment data via this API. You specify this with the
-- delete request to control which attachment is removed. This operation
-- cannot be undone. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.delete@.
module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.Delete
    (
    -- * REST Resource
      BeaconsAttachmentsDeleteResource

    -- * Creating a Request
    , beaconsAttachmentsDelete
    , BeaconsAttachmentsDelete

    -- * Request Lenses
    , badXgafv
    , badUploadProtocol
    , badAccessToken
    , badUploadType
    , badAttachmentName
    , badProjectId
    , badCallback
    ) where

import Network.Google.Prelude
import Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.delete@ method which the
-- 'BeaconsAttachmentsDelete' request conforms to.
type BeaconsAttachmentsDeleteResource =
     "v1beta1" :>
       Capture "attachmentName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified attachment for the given beacon. Each attachment
-- has a unique attachment name (\`attachmentName\`) which is returned when
-- you fetch the attachment data via this API. You specify this with the
-- delete request to control which attachment is removed. This operation
-- cannot be undone. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsAttachmentsDelete' smart constructor.
data BeaconsAttachmentsDelete =
  BeaconsAttachmentsDelete'
    { _badXgafv :: !(Maybe Xgafv)
    , _badUploadProtocol :: !(Maybe Text)
    , _badAccessToken :: !(Maybe Text)
    , _badUploadType :: !(Maybe Text)
    , _badAttachmentName :: !Text
    , _badProjectId :: !(Maybe Text)
    , _badCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeaconsAttachmentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'badXgafv'
--
-- * 'badUploadProtocol'
--
-- * 'badAccessToken'
--
-- * 'badUploadType'
--
-- * 'badAttachmentName'
--
-- * 'badProjectId'
--
-- * 'badCallback'
beaconsAttachmentsDelete
    :: Text -- ^ 'badAttachmentName'
    -> BeaconsAttachmentsDelete
beaconsAttachmentsDelete pBadAttachmentName_ =
  BeaconsAttachmentsDelete'
    { _badXgafv = Nothing
    , _badUploadProtocol = Nothing
    , _badAccessToken = Nothing
    , _badUploadType = Nothing
    , _badAttachmentName = pBadAttachmentName_
    , _badProjectId = Nothing
    , _badCallback = Nothing
    }


-- | V1 error format.
badXgafv :: Lens' BeaconsAttachmentsDelete (Maybe Xgafv)
badXgafv = lens _badXgafv (\ s a -> s{_badXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
badUploadProtocol :: Lens' BeaconsAttachmentsDelete (Maybe Text)
badUploadProtocol
  = lens _badUploadProtocol
      (\ s a -> s{_badUploadProtocol = a})

-- | OAuth access token.
badAccessToken :: Lens' BeaconsAttachmentsDelete (Maybe Text)
badAccessToken
  = lens _badAccessToken
      (\ s a -> s{_badAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
badUploadType :: Lens' BeaconsAttachmentsDelete (Maybe Text)
badUploadType
  = lens _badUploadType
      (\ s a -> s{_badUploadType = a})

-- | The attachment name (\`attachmentName\`) of the attachment to remove.
-- For example:
-- \`beacons\/3!893737abc9\/attachments\/c5e937-af0-494-959-ec49d12738\`.
-- For Eddystone-EID beacons, the beacon ID portion (\`3!893737abc9\`) may
-- be the beacon\'s current EID, or its \"stable\" Eddystone-UID. Required.
badAttachmentName :: Lens' BeaconsAttachmentsDelete Text
badAttachmentName
  = lens _badAttachmentName
      (\ s a -> s{_badAttachmentName = a})

-- | The project id of the attachment to delete. If not provided, the project
-- that is making the request is used. Optional.
badProjectId :: Lens' BeaconsAttachmentsDelete (Maybe Text)
badProjectId
  = lens _badProjectId (\ s a -> s{_badProjectId = a})

-- | JSONP
badCallback :: Lens' BeaconsAttachmentsDelete (Maybe Text)
badCallback
  = lens _badCallback (\ s a -> s{_badCallback = a})

instance GoogleRequest BeaconsAttachmentsDelete where
        type Rs BeaconsAttachmentsDelete = Empty
        type Scopes BeaconsAttachmentsDelete =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsAttachmentsDelete'{..}
          = go _badAttachmentName _badXgafv _badUploadProtocol
              _badAccessToken
              _badUploadType
              _badProjectId
              _badCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsAttachmentsDeleteResource)
                      mempty
