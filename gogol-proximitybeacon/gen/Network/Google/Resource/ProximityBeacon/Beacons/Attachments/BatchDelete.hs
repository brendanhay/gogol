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
-- delete all.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.batchDelete@.
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
    , babdPp
    , babdAccessToken
    , babdBeaconName
    , babdUploadType
    , babdBearerToken
    , babdNamespacedType
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
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "namespacedType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] DeleteAttachmentsResponse

-- | Deletes multiple attachments on a given beacon. This operation is
-- permanent and cannot be undone. You can optionally specify
-- \`namespacedType\` to choose which attachments should be deleted. If you
-- do not specify \`namespacedType\`, all your attachments on the given
-- beacon will be deleted. You also may explicitly specify \`*\/*\` to
-- delete all.
--
-- /See:/ 'beaconsAttachmentsBatchDelete' smart constructor.
data BeaconsAttachmentsBatchDelete = BeaconsAttachmentsBatchDelete
    { _babdXgafv          :: !(Maybe Text)
    , _babdUploadProtocol :: !(Maybe Text)
    , _babdPp             :: !Bool
    , _babdAccessToken    :: !(Maybe Text)
    , _babdBeaconName     :: !Text
    , _babdUploadType     :: !(Maybe Text)
    , _babdBearerToken    :: !(Maybe Text)
    , _babdNamespacedType :: !(Maybe Text)
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
-- * 'babdPp'
--
-- * 'babdAccessToken'
--
-- * 'babdBeaconName'
--
-- * 'babdUploadType'
--
-- * 'babdBearerToken'
--
-- * 'babdNamespacedType'
--
-- * 'babdCallback'
beaconsAttachmentsBatchDelete
    :: Text -- ^ 'babdBeaconName'
    -> BeaconsAttachmentsBatchDelete
beaconsAttachmentsBatchDelete pBabdBeaconName_ =
    BeaconsAttachmentsBatchDelete
    { _babdXgafv = Nothing
    , _babdUploadProtocol = Nothing
    , _babdPp = True
    , _babdAccessToken = Nothing
    , _babdBeaconName = pBabdBeaconName_
    , _babdUploadType = Nothing
    , _babdBearerToken = Nothing
    , _babdNamespacedType = Nothing
    , _babdCallback = Nothing
    }

-- | V1 error format.
babdXgafv :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdXgafv
  = lens _babdXgafv (\ s a -> s{_babdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
babdUploadProtocol :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdUploadProtocol
  = lens _babdUploadProtocol
      (\ s a -> s{_babdUploadProtocol = a})

-- | Pretty-print response.
babdPp :: Lens' BeaconsAttachmentsBatchDelete Bool
babdPp = lens _babdPp (\ s a -> s{_babdPp = a})

-- | OAuth access token.
babdAccessToken :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdAccessToken
  = lens _babdAccessToken
      (\ s a -> s{_babdAccessToken = a})

-- | The beacon whose attachments are to be deleted. Required.
babdBeaconName :: Lens' BeaconsAttachmentsBatchDelete Text
babdBeaconName
  = lens _babdBeaconName
      (\ s a -> s{_babdBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
babdUploadType :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdUploadType
  = lens _babdUploadType
      (\ s a -> s{_babdUploadType = a})

-- | OAuth bearer token.
babdBearerToken :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdBearerToken
  = lens _babdBearerToken
      (\ s a -> s{_babdBearerToken = a})

-- | Specifies the namespace and type of attachments to delete in
-- \`namespace\/type\` format. Accepts \`*\/*\` to specify \"all types in
-- all namespaces\". Optional.
babdNamespacedType :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdNamespacedType
  = lens _babdNamespacedType
      (\ s a -> s{_babdNamespacedType = a})

-- | JSONP
babdCallback :: Lens' BeaconsAttachmentsBatchDelete (Maybe Text)
babdCallback
  = lens _babdCallback (\ s a -> s{_babdCallback = a})

instance GoogleRequest BeaconsAttachmentsBatchDelete
         where
        type Rs BeaconsAttachmentsBatchDelete =
             DeleteAttachmentsResponse
        type Scopes BeaconsAttachmentsBatchDelete = '[]
        requestClient BeaconsAttachmentsBatchDelete{..}
          = go _babdBeaconName _babdXgafv _babdUploadProtocol
              (Just _babdPp)
              _babdAccessToken
              _babdUploadType
              _babdBearerToken
              _babdNamespacedType
              _babdCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BeaconsAttachmentsBatchDeleteResource)
                      mempty
