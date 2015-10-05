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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Diagnostics.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the diagnostics for a single beacon. You can also list diagnostics
-- for all the beacons owned by your Google Developers Console project by
-- using the beacon name \`beacons\/-\`.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsDiagnosticsList@.
module Network.Google.Resource.ProximityBeacon.Beacons.Diagnostics.List
    (
    -- * REST Resource
      BeaconsDiagnosticsListResource

    -- * Creating a Request
    , beaconsDiagnosticsList'
    , BeaconsDiagnosticsList'

    -- * Request Lenses
    , bdlXgafv
    , bdlQuotaUser
    , bdlPrettyPrint
    , bdlUploadProtocol
    , bdlPp
    , bdlAccessToken
    , bdlBeaconName
    , bdlUploadType
    , bdlBearerToken
    , bdlKey
    , bdlPageToken
    , bdlOAuthToken
    , bdlPageSize
    , bdlAlertFilter
    , bdlFields
    , bdlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsDiagnosticsList@ which the
-- 'BeaconsDiagnosticsList'' request conforms to.
type BeaconsDiagnosticsListResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         "diagnostics" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "alertFilter" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListDiagnosticsResponse

-- | List the diagnostics for a single beacon. You can also list diagnostics
-- for all the beacons owned by your Google Developers Console project by
-- using the beacon name \`beacons\/-\`.
--
-- /See:/ 'beaconsDiagnosticsList'' smart constructor.
data BeaconsDiagnosticsList' = BeaconsDiagnosticsList'
    { _bdlXgafv          :: !(Maybe Text)
    , _bdlQuotaUser      :: !(Maybe Text)
    , _bdlPrettyPrint    :: !Bool
    , _bdlUploadProtocol :: !(Maybe Text)
    , _bdlPp             :: !Bool
    , _bdlAccessToken    :: !(Maybe Text)
    , _bdlBeaconName     :: !Text
    , _bdlUploadType     :: !(Maybe Text)
    , _bdlBearerToken    :: !(Maybe Text)
    , _bdlKey            :: !(Maybe Key)
    , _bdlPageToken      :: !(Maybe Text)
    , _bdlOAuthToken     :: !(Maybe OAuthToken)
    , _bdlPageSize       :: !(Maybe Int32)
    , _bdlAlertFilter    :: !(Maybe Text)
    , _bdlFields         :: !(Maybe Text)
    , _bdlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDiagnosticsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdlXgafv'
--
-- * 'bdlQuotaUser'
--
-- * 'bdlPrettyPrint'
--
-- * 'bdlUploadProtocol'
--
-- * 'bdlPp'
--
-- * 'bdlAccessToken'
--
-- * 'bdlBeaconName'
--
-- * 'bdlUploadType'
--
-- * 'bdlBearerToken'
--
-- * 'bdlKey'
--
-- * 'bdlPageToken'
--
-- * 'bdlOAuthToken'
--
-- * 'bdlPageSize'
--
-- * 'bdlAlertFilter'
--
-- * 'bdlFields'
--
-- * 'bdlCallback'
beaconsDiagnosticsList'
    :: Text -- ^ 'beaconName'
    -> BeaconsDiagnosticsList'
beaconsDiagnosticsList' pBdlBeaconName_ =
    BeaconsDiagnosticsList'
    { _bdlXgafv = Nothing
    , _bdlQuotaUser = Nothing
    , _bdlPrettyPrint = True
    , _bdlUploadProtocol = Nothing
    , _bdlPp = True
    , _bdlAccessToken = Nothing
    , _bdlBeaconName = pBdlBeaconName_
    , _bdlUploadType = Nothing
    , _bdlBearerToken = Nothing
    , _bdlKey = Nothing
    , _bdlPageToken = Nothing
    , _bdlOAuthToken = Nothing
    , _bdlPageSize = Nothing
    , _bdlAlertFilter = Nothing
    , _bdlFields = Nothing
    , _bdlCallback = Nothing
    }

-- | V1 error format.
bdlXgafv :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlXgafv = lens _bdlXgafv (\ s a -> s{_bdlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bdlQuotaUser :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlQuotaUser
  = lens _bdlQuotaUser (\ s a -> s{_bdlQuotaUser = a})

-- | Returns response with indentations and line breaks.
bdlPrettyPrint :: Lens' BeaconsDiagnosticsList' Bool
bdlPrettyPrint
  = lens _bdlPrettyPrint
      (\ s a -> s{_bdlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bdlUploadProtocol :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlUploadProtocol
  = lens _bdlUploadProtocol
      (\ s a -> s{_bdlUploadProtocol = a})

-- | Pretty-print response.
bdlPp :: Lens' BeaconsDiagnosticsList' Bool
bdlPp = lens _bdlPp (\ s a -> s{_bdlPp = a})

-- | OAuth access token.
bdlAccessToken :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlAccessToken
  = lens _bdlAccessToken
      (\ s a -> s{_bdlAccessToken = a})

-- | Beacon that the diagnostics are for.
bdlBeaconName :: Lens' BeaconsDiagnosticsList' Text
bdlBeaconName
  = lens _bdlBeaconName
      (\ s a -> s{_bdlBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bdlUploadType :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlUploadType
  = lens _bdlUploadType
      (\ s a -> s{_bdlUploadType = a})

-- | OAuth bearer token.
bdlBearerToken :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlBearerToken
  = lens _bdlBearerToken
      (\ s a -> s{_bdlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bdlKey :: Lens' BeaconsDiagnosticsList' (Maybe Key)
bdlKey = lens _bdlKey (\ s a -> s{_bdlKey = a})

-- | Requests results that occur after the \`page_token\`, obtained from the
-- response to a previous request. Optional.
bdlPageToken :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlPageToken
  = lens _bdlPageToken (\ s a -> s{_bdlPageToken = a})

-- | OAuth 2.0 token for the current user.
bdlOAuthToken :: Lens' BeaconsDiagnosticsList' (Maybe OAuthToken)
bdlOAuthToken
  = lens _bdlOAuthToken
      (\ s a -> s{_bdlOAuthToken = a})

-- | Specifies the maximum number of results to return. Defaults to 10.
-- Maximum 1000. Optional.
bdlPageSize :: Lens' BeaconsDiagnosticsList' (Maybe Int32)
bdlPageSize
  = lens _bdlPageSize (\ s a -> s{_bdlPageSize = a})

-- | Requests only beacons that have the given alert. For example, to find
-- beacons that have low batteries use \`alert_filter=LOW_BATTERY\`.
bdlAlertFilter :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlAlertFilter
  = lens _bdlAlertFilter
      (\ s a -> s{_bdlAlertFilter = a})

-- | Selector specifying which fields to include in a partial response.
bdlFields :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlFields
  = lens _bdlFields (\ s a -> s{_bdlFields = a})

-- | JSONP
bdlCallback :: Lens' BeaconsDiagnosticsList' (Maybe Text)
bdlCallback
  = lens _bdlCallback (\ s a -> s{_bdlCallback = a})

instance GoogleAuth BeaconsDiagnosticsList' where
        authKey = bdlKey . _Just
        authToken = bdlOAuthToken . _Just

instance GoogleRequest BeaconsDiagnosticsList' where
        type Rs BeaconsDiagnosticsList' =
             ListDiagnosticsResponse
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsDiagnosticsList'{..}
          = go _bdlBeaconName _bdlXgafv _bdlUploadProtocol
              (Just _bdlPp)
              _bdlAccessToken
              _bdlUploadType
              _bdlBearerToken
              _bdlPageToken
              _bdlPageSize
              _bdlAlertFilter
              _bdlCallback
              _bdlQuotaUser
              (Just _bdlPrettyPrint)
              _bdlFields
              _bdlKey
              _bdlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsDiagnosticsListResource)
                      r
                      u
