{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes multiple attachments on a given beacon. This operation is
-- permanent and cannot be undone. You can optionally specify
-- \`namespacedType\` to choose which attachments should be deleted. If you
-- do not specify \`namespacedType\`, all your attachments on the given
-- beacon will be deleted. You also may explicitly specify \`*\/*\` to
-- delete all.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsAttachmentsBatchDelete@.
module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.BatchDelete
    (
    -- * REST Resource
      BeaconsAttachmentsBatchDeleteResource

    -- * Creating a Request
    , beaconsAttachmentsBatchDelete'
    , BeaconsAttachmentsBatchDelete'

    -- * Request Lenses
    , babdXgafv
    , babdQuotaUser
    , babdPrettyPrint
    , babdUploadProtocol
    , babdPp
    , babdAccessToken
    , babdBeaconName
    , babdUploadType
    , babdBearerToken
    , babdNamespacedType
    , babdKey
    , babdOauthToken
    , babdFields
    , babdCallback
    , babdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsAttachmentsBatchDelete@ which the
-- 'BeaconsAttachmentsBatchDelete'' request conforms to.
type BeaconsAttachmentsBatchDeleteResource =
     "v1beta1" :>
       "{+beaconName}" :>
         "attachments:batchDelete" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "namespacedType" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] DeleteAttachmentsResponse

-- | Deletes multiple attachments on a given beacon. This operation is
-- permanent and cannot be undone. You can optionally specify
-- \`namespacedType\` to choose which attachments should be deleted. If you
-- do not specify \`namespacedType\`, all your attachments on the given
-- beacon will be deleted. You also may explicitly specify \`*\/*\` to
-- delete all.
--
-- /See:/ 'beaconsAttachmentsBatchDelete'' smart constructor.
data BeaconsAttachmentsBatchDelete' = BeaconsAttachmentsBatchDelete'
    { _babdXgafv          :: !(Maybe Text)
    , _babdQuotaUser      :: !(Maybe Text)
    , _babdPrettyPrint    :: !Bool
    , _babdUploadProtocol :: !(Maybe Text)
    , _babdPp             :: !Bool
    , _babdAccessToken    :: !(Maybe Text)
    , _babdBeaconName     :: !Text
    , _babdUploadType     :: !(Maybe Text)
    , _babdBearerToken    :: !(Maybe Text)
    , _babdNamespacedType :: !(Maybe Text)
    , _babdKey            :: !(Maybe Text)
    , _babdOauthToken     :: !(Maybe Text)
    , _babdFields         :: !(Maybe Text)
    , _babdCallback       :: !(Maybe Text)
    , _babdAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsAttachmentsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'babdXgafv'
--
-- * 'babdQuotaUser'
--
-- * 'babdPrettyPrint'
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
-- * 'babdKey'
--
-- * 'babdOauthToken'
--
-- * 'babdFields'
--
-- * 'babdCallback'
--
-- * 'babdAlt'
beaconsAttachmentsBatchDelete'
    :: Text -- ^ 'beaconName'
    -> BeaconsAttachmentsBatchDelete'
beaconsAttachmentsBatchDelete' pBabdBeaconName_ =
    BeaconsAttachmentsBatchDelete'
    { _babdXgafv = Nothing
    , _babdQuotaUser = Nothing
    , _babdPrettyPrint = True
    , _babdUploadProtocol = Nothing
    , _babdPp = True
    , _babdAccessToken = Nothing
    , _babdBeaconName = pBabdBeaconName_
    , _babdUploadType = Nothing
    , _babdBearerToken = Nothing
    , _babdNamespacedType = Nothing
    , _babdKey = Nothing
    , _babdOauthToken = Nothing
    , _babdFields = Nothing
    , _babdCallback = Nothing
    , _babdAlt = "json"
    }

-- | V1 error format.
babdXgafv :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdXgafv
  = lens _babdXgafv (\ s a -> s{_babdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
babdQuotaUser :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdQuotaUser
  = lens _babdQuotaUser
      (\ s a -> s{_babdQuotaUser = a})

-- | Returns response with indentations and line breaks.
babdPrettyPrint :: Lens' BeaconsAttachmentsBatchDelete' Bool
babdPrettyPrint
  = lens _babdPrettyPrint
      (\ s a -> s{_babdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
babdUploadProtocol :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdUploadProtocol
  = lens _babdUploadProtocol
      (\ s a -> s{_babdUploadProtocol = a})

-- | Pretty-print response.
babdPp :: Lens' BeaconsAttachmentsBatchDelete' Bool
babdPp = lens _babdPp (\ s a -> s{_babdPp = a})

-- | OAuth access token.
babdAccessToken :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdAccessToken
  = lens _babdAccessToken
      (\ s a -> s{_babdAccessToken = a})

-- | The beacon whose attachments are to be deleted. Required.
babdBeaconName :: Lens' BeaconsAttachmentsBatchDelete' Text
babdBeaconName
  = lens _babdBeaconName
      (\ s a -> s{_babdBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
babdUploadType :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdUploadType
  = lens _babdUploadType
      (\ s a -> s{_babdUploadType = a})

-- | OAuth bearer token.
babdBearerToken :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdBearerToken
  = lens _babdBearerToken
      (\ s a -> s{_babdBearerToken = a})

-- | Specifies the namespace and type of attachments to delete in
-- \`namespace\/type\` format. Accepts \`*\/*\` to specify \"all types in
-- all namespaces\". Optional.
babdNamespacedType :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdNamespacedType
  = lens _babdNamespacedType
      (\ s a -> s{_babdNamespacedType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
babdKey :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdKey = lens _babdKey (\ s a -> s{_babdKey = a})

-- | OAuth 2.0 token for the current user.
babdOauthToken :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdOauthToken
  = lens _babdOauthToken
      (\ s a -> s{_babdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
babdFields :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdFields
  = lens _babdFields (\ s a -> s{_babdFields = a})

-- | JSONP
babdCallback :: Lens' BeaconsAttachmentsBatchDelete' (Maybe Text)
babdCallback
  = lens _babdCallback (\ s a -> s{_babdCallback = a})

-- | Data format for response.
babdAlt :: Lens' BeaconsAttachmentsBatchDelete' Text
babdAlt = lens _babdAlt (\ s a -> s{_babdAlt = a})

instance GoogleRequest BeaconsAttachmentsBatchDelete'
         where
        type Rs BeaconsAttachmentsBatchDelete' =
             DeleteAttachmentsResponse
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u
          BeaconsAttachmentsBatchDelete'{..}
          = go _babdXgafv _babdQuotaUser
              (Just _babdPrettyPrint)
              _babdUploadProtocol
              (Just _babdPp)
              _babdAccessToken
              _babdBeaconName
              _babdUploadType
              _babdBearerToken
              _babdNamespacedType
              _babdKey
              _babdOauthToken
              _babdFields
              _babdCallback
              (Just _babdAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy BeaconsAttachmentsBatchDeleteResource)
                      r
                      u
