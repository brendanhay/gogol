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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes multiple attachments on a given beacon. This operation is
-- permanent and cannot be undone. You can optionally specify
-- \`namespacedType\` to choose which attachments should be deleted. If you
-- do not specify \`namespacedType\`, all your attachments on the given
-- beacon will be deleted. You also may explicitly specify \`*\/*\` to
-- delete all. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.batchDelete@.
module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete
    (
    -- * REST Resource
      BeaconsAttachmentsBatchDeleteResource

    -- * Creating a Request
    , beaconsAttachmentsBatchDelete
    , BeaconsAttachmentsBatchDelete

    -- * Request Lenses
    , babdXgafv
    , babdUploadProtocol
    , babdAccessToken
    , babdBeaconName
    , babdUploadType
    , babdNamespacedType
    , babdProjectId
    , babdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.batchDelete@ method which the
-- 'BeaconsAttachmentsBatchDelete' request conforms to.
type BeaconsAttachmentsBatchDeleteResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         "attachments:batchDelete" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "namespacedType" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] DeleteAttachmentsResponse

-- | Deletes multiple attachments on a given beacon. This operation is
-- permanent and cannot be undone. You can optionally specify
-- \`namespacedType\` to choose which attachments should be deleted. If you
-- do not specify \`namespacedType\`, all your attachments on the given
-- beacon will be deleted. You also may explicitly specify \`*\/*\` to
-- delete all. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **Is owner** or **Can edit** permissions in
-- the Google Developers Console project.
--
-- /See:/ 'beaconsAttachmentsBatchDelete' smart constructor.
data BeaconsAttachmentsBatchDelete = BeaconsAttachmentsBatchDelete'
    { _babdXgafv          :: !(Maybe Xgafv)
    , _babdUploadProtocol :: !(Maybe Text)
    , _babdAccessToken    :: !(Maybe Text)
    , _babdBeaconName     :: !Text
    , _babdUploadType     :: !(Maybe Text)
    , _babdNamespacedType :: !(Maybe Text)
    , _babdProjectId      :: !(Maybe Text)
    , _babdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsAttachmentsBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'babdXgafv'
--
-- * 'babdUploadProtocol'
--
-- * 'babdAccessToken'
--
-- * 'babdBeaconName'
--
-- * 'babdUploadType'
--
-- * 'babdNamespacedType'
--
-- * 'babdProjectId'
--
-- * 'babdCallback'
beaconsAttachmentsBatchDelete
    :: Text -- ^ 'babdBeaconName'
    -> BeaconsAttachmentsBatchDelete
beaconsAttachmentsBatchDelete pBabdBeaconName_ =
    BeaconsAttachmentsBatchDelete'
    { _babdXgafv = Nothing
    , _babdUploadProtocol = Nothing
    , _babdAccessToken = Nothing
    , _babdBeaconName = pBabdBeaconName_
    , _babdUploadType = Nothing
    , _babdNamespacedType = Nothing
    , _babdProjectId = Nothing
    , _babdCallback = Nothing
    }

-- | V1 error format.
babdXgafv :: Lens' BeaconsAttachmentsBatchDelete (Maybe Xgafv)
babdXgafv
  = lens _babdXgafv (\ s a -> s{_babdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
babdUploadProtocol :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdUploadProtocol
  = lens _babdUploadProtocol
      (\ s a -> s{_babdUploadProtocol = a})

-- | OAuth access token.
babdAccessToken :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdAccessToken
  = lens _babdAccessToken
      (\ s a -> s{_babdAccessToken = a})

-- | The beacon whose attachments should be deleted. A beacon name has the
-- format \"beacons\/N!beaconId\" where the beaconId is the base16 ID
-- broadcast by the beacon and N is a code for the beacon\'s type. Possible
-- values are \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for
-- iBeacon, or \`5\` for AltBeacon. For Eddystone-EID beacons, you may use
-- either the current EID or the beacon\'s \"stable\" UID. Required.
babdBeaconName :: Lens' BeaconsAttachmentsBatchDelete Text
babdBeaconName
  = lens _babdBeaconName
      (\ s a -> s{_babdBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
babdUploadType :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdUploadType
  = lens _babdUploadType
      (\ s a -> s{_babdUploadType = a})

-- | Specifies the namespace and type of attachments to delete in
-- \`namespace\/type\` format. Accepts \`*\/*\` to specify \"all types in
-- all namespaces\". Optional.
babdNamespacedType :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdNamespacedType
  = lens _babdNamespacedType
      (\ s a -> s{_babdNamespacedType = a})

-- | The project id to delete beacon attachments under. This field can be
-- used when \"*\" is specified to mean all attachment namespaces. Projects
-- may have multiple attachments with multiple namespaces. If \"*\" is
-- specified and the projectId string is empty, then the project making the
-- request is used. Optional.
babdProjectId :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdProjectId
  = lens _babdProjectId
      (\ s a -> s{_babdProjectId = a})

-- | JSONP
babdCallback :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdCallback
  = lens _babdCallback (\ s a -> s{_babdCallback = a})

instance GoogleRequest BeaconsAttachmentsBatchDelete
         where
        type Rs BeaconsAttachmentsBatchDelete =
             DeleteAttachmentsResponse
        type Scopes BeaconsAttachmentsBatchDelete =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsAttachmentsBatchDelete'{..}
          = go _babdBeaconName _babdXgafv _babdUploadProtocol
              _babdAccessToken
              _babdUploadType
              _babdNamespacedType
              _babdProjectId
              _babdCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BeaconsAttachmentsBatchDeleteResource)
                      mempty
