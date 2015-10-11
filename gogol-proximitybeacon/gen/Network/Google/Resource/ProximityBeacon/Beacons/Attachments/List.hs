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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the attachments for the specified beacon that match the
-- specified namespaced-type pattern. To control which namespaced types are
-- returned, you add the \`namespacedType\` query parameter to the request.
-- You must either use \`*\/*\`, to return all attachments, or the
-- namespace must be one of the ones returned from the \`namespaces\`
-- endpoint.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsAttachmentsList@.
module Network.Google.Resource.ProximityBeacon.Beacons.Attachments.List
    (
    -- * REST Resource
      BeaconsAttachmentsListResource

    -- * Creating a Request
    , beaconsAttachmentsList'
    , BeaconsAttachmentsList'

    -- * Request Lenses
    , balXgafv
    , balQuotaUser
    , balPrettyPrint
    , balUploadProtocol
    , balPp
    , balAccessToken
    , balBeaconName
    , balUploadType
    , balBearerToken
    , balNamespacedType
    , balKey
    , balOAuthToken
    , balFields
    , balCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsAttachmentsList@ method which the
-- 'BeaconsAttachmentsList'' request conforms to.
type BeaconsAttachmentsListResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         "attachments" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "namespacedType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   Header "Authorization" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListBeaconAttachmentsResponse

-- | Returns the attachments for the specified beacon that match the
-- specified namespaced-type pattern. To control which namespaced types are
-- returned, you add the \`namespacedType\` query parameter to the request.
-- You must either use \`*\/*\`, to return all attachments, or the
-- namespace must be one of the ones returned from the \`namespaces\`
-- endpoint.
--
-- /See:/ 'beaconsAttachmentsList'' smart constructor.
data BeaconsAttachmentsList' = BeaconsAttachmentsList'
    { _balXgafv          :: !(Maybe Text)
    , _balQuotaUser      :: !(Maybe Text)
    , _balPrettyPrint    :: !Bool
    , _balUploadProtocol :: !(Maybe Text)
    , _balPp             :: !Bool
    , _balAccessToken    :: !(Maybe Text)
    , _balBeaconName     :: !Text
    , _balUploadType     :: !(Maybe Text)
    , _balBearerToken    :: !(Maybe Text)
    , _balNamespacedType :: !(Maybe Text)
    , _balKey            :: !(Maybe AuthKey)
    , _balOAuthToken     :: !(Maybe OAuthToken)
    , _balFields         :: !(Maybe Text)
    , _balCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsAttachmentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balXgafv'
--
-- * 'balQuotaUser'
--
-- * 'balPrettyPrint'
--
-- * 'balUploadProtocol'
--
-- * 'balPp'
--
-- * 'balAccessToken'
--
-- * 'balBeaconName'
--
-- * 'balUploadType'
--
-- * 'balBearerToken'
--
-- * 'balNamespacedType'
--
-- * 'balKey'
--
-- * 'balOAuthToken'
--
-- * 'balFields'
--
-- * 'balCallback'
beaconsAttachmentsList'
    :: Text -- ^ 'beaconName'
    -> BeaconsAttachmentsList'
beaconsAttachmentsList' pBalBeaconName_ =
    BeaconsAttachmentsList'
    { _balXgafv = Nothing
    , _balQuotaUser = Nothing
    , _balPrettyPrint = True
    , _balUploadProtocol = Nothing
    , _balPp = True
    , _balAccessToken = Nothing
    , _balBeaconName = pBalBeaconName_
    , _balUploadType = Nothing
    , _balBearerToken = Nothing
    , _balNamespacedType = Nothing
    , _balKey = Nothing
    , _balOAuthToken = Nothing
    , _balFields = Nothing
    , _balCallback = Nothing
    }

-- | V1 error format.
balXgafv :: Lens' BeaconsAttachmentsList' (Maybe Text)
balXgafv = lens _balXgafv (\ s a -> s{_balXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
balQuotaUser :: Lens' BeaconsAttachmentsList' (Maybe Text)
balQuotaUser
  = lens _balQuotaUser (\ s a -> s{_balQuotaUser = a})

-- | Returns response with indentations and line breaks.
balPrettyPrint :: Lens' BeaconsAttachmentsList' Bool
balPrettyPrint
  = lens _balPrettyPrint
      (\ s a -> s{_balPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balUploadProtocol :: Lens' BeaconsAttachmentsList' (Maybe Text)
balUploadProtocol
  = lens _balUploadProtocol
      (\ s a -> s{_balUploadProtocol = a})

-- | Pretty-print response.
balPp :: Lens' BeaconsAttachmentsList' Bool
balPp = lens _balPp (\ s a -> s{_balPp = a})

-- | OAuth access token.
balAccessToken :: Lens' BeaconsAttachmentsList' (Maybe Text)
balAccessToken
  = lens _balAccessToken
      (\ s a -> s{_balAccessToken = a})

-- | The beacon whose attachments are to be fetched. Required.
balBeaconName :: Lens' BeaconsAttachmentsList' Text
balBeaconName
  = lens _balBeaconName
      (\ s a -> s{_balBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balUploadType :: Lens' BeaconsAttachmentsList' (Maybe Text)
balUploadType
  = lens _balUploadType
      (\ s a -> s{_balUploadType = a})

-- | OAuth bearer token.
balBearerToken :: Lens' BeaconsAttachmentsList' (Maybe Text)
balBearerToken
  = lens _balBearerToken
      (\ s a -> s{_balBearerToken = a})

-- | Specifies the namespace and type of attachment to include in response in
-- namespace\/type format. Accepts \`*\/*\` to specify \"all types in all
-- namespaces\".
balNamespacedType :: Lens' BeaconsAttachmentsList' (Maybe Text)
balNamespacedType
  = lens _balNamespacedType
      (\ s a -> s{_balNamespacedType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
balKey :: Lens' BeaconsAttachmentsList' (Maybe AuthKey)
balKey = lens _balKey (\ s a -> s{_balKey = a})

-- | OAuth 2.0 token for the current user.
balOAuthToken :: Lens' BeaconsAttachmentsList' (Maybe OAuthToken)
balOAuthToken
  = lens _balOAuthToken
      (\ s a -> s{_balOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
balFields :: Lens' BeaconsAttachmentsList' (Maybe Text)
balFields
  = lens _balFields (\ s a -> s{_balFields = a})

-- | JSONP
balCallback :: Lens' BeaconsAttachmentsList' (Maybe Text)
balCallback
  = lens _balCallback (\ s a -> s{_balCallback = a})

instance GoogleAuth BeaconsAttachmentsList' where
        _AuthKey = balKey . _Just
        _AuthToken = balOAuthToken . _Just

instance GoogleRequest BeaconsAttachmentsList' where
        type Rs BeaconsAttachmentsList' =
             ListBeaconAttachmentsResponse
        request = requestWith proximityBeaconRequest
        requestWith rq BeaconsAttachmentsList'{..}
          = go _balBeaconName _balXgafv _balUploadProtocol
              (Just _balPp)
              _balAccessToken
              _balUploadType
              _balBearerToken
              _balNamespacedType
              _balCallback
              _balQuotaUser
              (Just _balPrettyPrint)
              _balFields
              _balKey
              _balOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy BeaconsAttachmentsListResource)
                      rq
