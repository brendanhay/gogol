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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Attachments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the attachments for the specified beacon that match the
-- specified namespaced-type pattern. To control which namespaced types are
-- returned, you add the \`namespacedType\` query parameter to the request.
-- You must either use \`*\/*\`, to return all attachments, or the
-- namespace must be one of the ones returned from the \`namespaces\`
-- endpoint. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.list@.
module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.List
    (
    -- * REST Resource
      BeaconsAttachmentsListResource

    -- * Creating a Request
    , beaconsAttachmentsList
    , BeaconsAttachmentsList

    -- * Request Lenses
    , balXgafv
    , balUploadProtocol
    , balAccessToken
    , balBeaconName
    , balUploadType
    , balNamespacedType
    , balProjectId
    , balCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.attachments.list@ method which the
-- 'BeaconsAttachmentsList' request conforms to.
type BeaconsAttachmentsListResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         "attachments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "namespacedType" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBeaconAttachmentsResponse

-- | Returns the attachments for the specified beacon that match the
-- specified namespaced-type pattern. To control which namespaced types are
-- returned, you add the \`namespacedType\` query parameter to the request.
-- You must either use \`*\/*\`, to return all attachments, or the
-- namespace must be one of the ones returned from the \`namespaces\`
-- endpoint. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ 'beaconsAttachmentsList' smart constructor.
data BeaconsAttachmentsList = BeaconsAttachmentsList'
    { _balXgafv          :: !(Maybe Xgafv)
    , _balUploadProtocol :: !(Maybe Text)
    , _balAccessToken    :: !(Maybe Text)
    , _balBeaconName     :: !Text
    , _balUploadType     :: !(Maybe Text)
    , _balNamespacedType :: !(Maybe Text)
    , _balProjectId      :: !(Maybe Text)
    , _balCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsAttachmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balXgafv'
--
-- * 'balUploadProtocol'
--
-- * 'balAccessToken'
--
-- * 'balBeaconName'
--
-- * 'balUploadType'
--
-- * 'balNamespacedType'
--
-- * 'balProjectId'
--
-- * 'balCallback'
beaconsAttachmentsList
    :: Text -- ^ 'balBeaconName'
    -> BeaconsAttachmentsList
beaconsAttachmentsList pBalBeaconName_ =
    BeaconsAttachmentsList'
    { _balXgafv = Nothing
    , _balUploadProtocol = Nothing
    , _balAccessToken = Nothing
    , _balBeaconName = pBalBeaconName_
    , _balUploadType = Nothing
    , _balNamespacedType = Nothing
    , _balProjectId = Nothing
    , _balCallback = Nothing
    }

-- | V1 error format.
balXgafv :: Lens' BeaconsAttachmentsList (Maybe Xgafv)
balXgafv = lens _balXgafv (\ s a -> s{_balXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balUploadProtocol :: Lens' BeaconsAttachmentsList (Maybe Text)
balUploadProtocol
  = lens _balUploadProtocol
      (\ s a -> s{_balUploadProtocol = a})

-- | OAuth access token.
balAccessToken :: Lens' BeaconsAttachmentsList (Maybe Text)
balAccessToken
  = lens _balAccessToken
      (\ s a -> s{_balAccessToken = a})

-- | Beacon whose attachments should be fetched. A beacon name has the format
-- \"beacons\/N!beaconId\" where the beaconId is the base16 ID broadcast by
-- the beacon and N is a code for the beacon\'s type. Possible values are
-- \`3\` for Eddystone-UID, \`4\` for Eddystone-EID, \`1\` for iBeacon, or
-- \`5\` for AltBeacon. For Eddystone-EID beacons, you may use either the
-- current EID or the beacon\'s \"stable\" UID. Required.
balBeaconName :: Lens' BeaconsAttachmentsList Text
balBeaconName
  = lens _balBeaconName
      (\ s a -> s{_balBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balUploadType :: Lens' BeaconsAttachmentsList (Maybe Text)
balUploadType
  = lens _balUploadType
      (\ s a -> s{_balUploadType = a})

-- | Specifies the namespace and type of attachment to include in response in
-- namespace\/type format. Accepts \`*\/*\` to specify \"all types in all
-- namespaces\".
balNamespacedType :: Lens' BeaconsAttachmentsList (Maybe Text)
balNamespacedType
  = lens _balNamespacedType
      (\ s a -> s{_balNamespacedType = a})

-- | The project id to list beacon attachments under. This field can be used
-- when \"*\" is specified to mean all attachment namespaces. Projects may
-- have multiple attachments with multiple namespaces. If \"*\" is
-- specified and the projectId string is empty, then the project making the
-- request is used. Optional.
balProjectId :: Lens' BeaconsAttachmentsList (Maybe Text)
balProjectId
  = lens _balProjectId (\ s a -> s{_balProjectId = a})

-- | JSONP
balCallback :: Lens' BeaconsAttachmentsList (Maybe Text)
balCallback
  = lens _balCallback (\ s a -> s{_balCallback = a})

instance GoogleRequest BeaconsAttachmentsList where
        type Rs BeaconsAttachmentsList =
             ListBeaconAttachmentsResponse
        type Scopes BeaconsAttachmentsList =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsAttachmentsList'{..}
          = go _balBeaconName _balXgafv _balUploadProtocol
              _balAccessToken
              _balUploadType
              _balNamespacedType
              _balProjectId
              _balCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsAttachmentsListResource)
                      mempty
