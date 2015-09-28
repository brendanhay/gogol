{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.ProximityBeacon.Beacons.Attachments.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Associates the given data with the specified beacon. Attachment data
-- must contain two parts: - A namespaced type. - The actual attachment
-- data itself. The namespaced type consists of two parts, the namespace
-- and the type. The namespace must be one of the values returned by the
-- \`namespaces\` endpoint, while the type can be a string of any
-- characters except for the forward slash (\`\/\`) up to 100 characters in
-- length. Attachment data can be up to 1024 bytes long.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.attachments.create@.
module Network.Google.API.ProximityBeacon.Beacons.Attachments.Create
    (
    -- * REST Resource
      BeaconsAttachmentsCreateAPI

    -- * Creating a Request
    , beaconsAttachmentsCreate'
    , BeaconsAttachmentsCreate'

    -- * Request Lenses
    , bacXgafv
    , bacQuotaUser
    , bacPrettyPrint
    , bacUploadProtocol
    , bacPp
    , bacAccessToken
    , bacBeaconName
    , bacUploadType
    , bacBearerToken
    , bacKey
    , bacOauthToken
    , bacFields
    , bacCallback
    , bacAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for proximitybeacon.beacons.attachments.create which the
-- 'BeaconsAttachmentsCreate'' request conforms to.
type BeaconsAttachmentsCreateAPI =
     "v1beta1" :>
       "{+beaconName}" :>
         "attachments" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] BeaconAttachment

-- | Associates the given data with the specified beacon. Attachment data
-- must contain two parts: - A namespaced type. - The actual attachment
-- data itself. The namespaced type consists of two parts, the namespace
-- and the type. The namespace must be one of the values returned by the
-- \`namespaces\` endpoint, while the type can be a string of any
-- characters except for the forward slash (\`\/\`) up to 100 characters in
-- length. Attachment data can be up to 1024 bytes long.
--
-- /See:/ 'beaconsAttachmentsCreate'' smart constructor.
data BeaconsAttachmentsCreate' = BeaconsAttachmentsCreate'
    { _bacXgafv          :: !(Maybe Text)
    , _bacQuotaUser      :: !(Maybe Text)
    , _bacPrettyPrint    :: !Bool
    , _bacUploadProtocol :: !(Maybe Text)
    , _bacPp             :: !Bool
    , _bacAccessToken    :: !(Maybe Text)
    , _bacBeaconName     :: !Text
    , _bacUploadType     :: !(Maybe Text)
    , _bacBearerToken    :: !(Maybe Text)
    , _bacKey            :: !(Maybe Text)
    , _bacOauthToken     :: !(Maybe Text)
    , _bacFields         :: !(Maybe Text)
    , _bacCallback       :: !(Maybe Text)
    , _bacAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsAttachmentsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacXgafv'
--
-- * 'bacQuotaUser'
--
-- * 'bacPrettyPrint'
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
-- * 'bacBearerToken'
--
-- * 'bacKey'
--
-- * 'bacOauthToken'
--
-- * 'bacFields'
--
-- * 'bacCallback'
--
-- * 'bacAlt'
beaconsAttachmentsCreate'
    :: Text -- ^ 'beaconName'
    -> BeaconsAttachmentsCreate'
beaconsAttachmentsCreate' pBacBeaconName_ =
    BeaconsAttachmentsCreate'
    { _bacXgafv = Nothing
    , _bacQuotaUser = Nothing
    , _bacPrettyPrint = True
    , _bacUploadProtocol = Nothing
    , _bacPp = True
    , _bacAccessToken = Nothing
    , _bacBeaconName = pBacBeaconName_
    , _bacUploadType = Nothing
    , _bacBearerToken = Nothing
    , _bacKey = Nothing
    , _bacOauthToken = Nothing
    , _bacFields = Nothing
    , _bacCallback = Nothing
    , _bacAlt = "json"
    }

-- | V1 error format.
bacXgafv :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacXgafv = lens _bacXgafv (\ s a -> s{_bacXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bacQuotaUser :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacQuotaUser
  = lens _bacQuotaUser (\ s a -> s{_bacQuotaUser = a})

-- | Returns response with indentations and line breaks.
bacPrettyPrint :: Lens' BeaconsAttachmentsCreate' Bool
bacPrettyPrint
  = lens _bacPrettyPrint
      (\ s a -> s{_bacPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bacUploadProtocol :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacUploadProtocol
  = lens _bacUploadProtocol
      (\ s a -> s{_bacUploadProtocol = a})

-- | Pretty-print response.
bacPp :: Lens' BeaconsAttachmentsCreate' Bool
bacPp = lens _bacPp (\ s a -> s{_bacPp = a})

-- | OAuth access token.
bacAccessToken :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacAccessToken
  = lens _bacAccessToken
      (\ s a -> s{_bacAccessToken = a})

-- | The beacon on which the attachment should be created. Required.
bacBeaconName :: Lens' BeaconsAttachmentsCreate' Text
bacBeaconName
  = lens _bacBeaconName
      (\ s a -> s{_bacBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bacUploadType :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacUploadType
  = lens _bacUploadType
      (\ s a -> s{_bacUploadType = a})

-- | OAuth bearer token.
bacBearerToken :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacBearerToken
  = lens _bacBearerToken
      (\ s a -> s{_bacBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bacKey :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacKey = lens _bacKey (\ s a -> s{_bacKey = a})

-- | OAuth 2.0 token for the current user.
bacOauthToken :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacOauthToken
  = lens _bacOauthToken
      (\ s a -> s{_bacOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bacFields :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacFields
  = lens _bacFields (\ s a -> s{_bacFields = a})

-- | JSONP
bacCallback :: Lens' BeaconsAttachmentsCreate' (Maybe Text)
bacCallback
  = lens _bacCallback (\ s a -> s{_bacCallback = a})

-- | Data format for response.
bacAlt :: Lens' BeaconsAttachmentsCreate' Text
bacAlt = lens _bacAlt (\ s a -> s{_bacAlt = a})

instance GoogleRequest BeaconsAttachmentsCreate'
         where
        type Rs BeaconsAttachmentsCreate' = BeaconAttachment
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsAttachmentsCreate'{..}
          = go _bacXgafv _bacQuotaUser (Just _bacPrettyPrint)
              _bacUploadProtocol
              (Just _bacPp)
              _bacAccessToken
              _bacBeaconName
              _bacUploadType
              _bacBearerToken
              _bacKey
              _bacOauthToken
              _bacFields
              _bacCallback
              (Just _bacAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsAttachmentsCreateAPI)
                      r
                      u
