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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Decommission
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconsDecommission@.
module Network.Google.Resource.ProximityBeacon.Beacons.Decommission
    (
    -- * REST Resource
      BeaconsDecommissionResource

    -- * Creating a Request
    , beaconsDecommission'
    , BeaconsDecommission'

    -- * Request Lenses
    , bdXgafv
    , bdQuotaUser
    , bdPrettyPrint
    , bdUploadProtocol
    , bdPp
    , bdAccessToken
    , bdBeaconName
    , bdUploadType
    , bdBearerToken
    , bdKey
    , bdOAuthToken
    , bdFields
    , bdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconsDecommission@ which the
-- 'BeaconsDecommission'' request conforms to.
type BeaconsDecommissionResource =
     "v1beta1" :>
       "{+beaconName}:decommission" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "access_token" Text :>
             QueryParam "bearer_token" Text :>
               QueryParam "callback" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "uploadType" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Decommissions the specified beacon in the service. This beacon will no
-- longer be returned from \`beaconinfo.getforobserved\`. This operation is
-- permanent -- you will not be able to re-register a beacon with this ID
-- again.
--
-- /See:/ 'beaconsDecommission'' smart constructor.
data BeaconsDecommission' = BeaconsDecommission'
    { _bdXgafv          :: !(Maybe Text)
    , _bdQuotaUser      :: !(Maybe Text)
    , _bdPrettyPrint    :: !Bool
    , _bdUploadProtocol :: !(Maybe Text)
    , _bdPp             :: !Bool
    , _bdAccessToken    :: !(Maybe Text)
    , _bdBeaconName     :: !Text
    , _bdUploadType     :: !(Maybe Text)
    , _bdBearerToken    :: !(Maybe Text)
    , _bdKey            :: !(Maybe Key)
    , _bdOAuthToken     :: !(Maybe OAuthToken)
    , _bdFields         :: !(Maybe Text)
    , _bdCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsDecommission'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdXgafv'
--
-- * 'bdQuotaUser'
--
-- * 'bdPrettyPrint'
--
-- * 'bdUploadProtocol'
--
-- * 'bdPp'
--
-- * 'bdAccessToken'
--
-- * 'bdBeaconName'
--
-- * 'bdUploadType'
--
-- * 'bdBearerToken'
--
-- * 'bdKey'
--
-- * 'bdOAuthToken'
--
-- * 'bdFields'
--
-- * 'bdCallback'
beaconsDecommission'
    :: Text -- ^ 'beaconName'
    -> BeaconsDecommission'
beaconsDecommission' pBdBeaconName_ =
    BeaconsDecommission'
    { _bdXgafv = Nothing
    , _bdQuotaUser = Nothing
    , _bdPrettyPrint = True
    , _bdUploadProtocol = Nothing
    , _bdPp = True
    , _bdAccessToken = Nothing
    , _bdBeaconName = pBdBeaconName_
    , _bdUploadType = Nothing
    , _bdBearerToken = Nothing
    , _bdKey = Nothing
    , _bdOAuthToken = Nothing
    , _bdFields = Nothing
    , _bdCallback = Nothing
    }

-- | V1 error format.
bdXgafv :: Lens' BeaconsDecommission' (Maybe Text)
bdXgafv = lens _bdXgafv (\ s a -> s{_bdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bdQuotaUser :: Lens' BeaconsDecommission' (Maybe Text)
bdQuotaUser
  = lens _bdQuotaUser (\ s a -> s{_bdQuotaUser = a})

-- | Returns response with indentations and line breaks.
bdPrettyPrint :: Lens' BeaconsDecommission' Bool
bdPrettyPrint
  = lens _bdPrettyPrint
      (\ s a -> s{_bdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bdUploadProtocol :: Lens' BeaconsDecommission' (Maybe Text)
bdUploadProtocol
  = lens _bdUploadProtocol
      (\ s a -> s{_bdUploadProtocol = a})

-- | Pretty-print response.
bdPp :: Lens' BeaconsDecommission' Bool
bdPp = lens _bdPp (\ s a -> s{_bdPp = a})

-- | OAuth access token.
bdAccessToken :: Lens' BeaconsDecommission' (Maybe Text)
bdAccessToken
  = lens _bdAccessToken
      (\ s a -> s{_bdAccessToken = a})

-- | Beacon that should be decommissioned. Required.
bdBeaconName :: Lens' BeaconsDecommission' Text
bdBeaconName
  = lens _bdBeaconName (\ s a -> s{_bdBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bdUploadType :: Lens' BeaconsDecommission' (Maybe Text)
bdUploadType
  = lens _bdUploadType (\ s a -> s{_bdUploadType = a})

-- | OAuth bearer token.
bdBearerToken :: Lens' BeaconsDecommission' (Maybe Text)
bdBearerToken
  = lens _bdBearerToken
      (\ s a -> s{_bdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bdKey :: Lens' BeaconsDecommission' (Maybe Key)
bdKey = lens _bdKey (\ s a -> s{_bdKey = a})

-- | OAuth 2.0 token for the current user.
bdOAuthToken :: Lens' BeaconsDecommission' (Maybe OAuthToken)
bdOAuthToken
  = lens _bdOAuthToken (\ s a -> s{_bdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bdFields :: Lens' BeaconsDecommission' (Maybe Text)
bdFields = lens _bdFields (\ s a -> s{_bdFields = a})

-- | JSONP
bdCallback :: Lens' BeaconsDecommission' (Maybe Text)
bdCallback
  = lens _bdCallback (\ s a -> s{_bdCallback = a})

instance GoogleAuth BeaconsDecommission' where
        authKey = bdKey . _Just
        authToken = bdOAuthToken . _Just

instance GoogleRequest BeaconsDecommission' where
        type Rs BeaconsDecommission' = Empty
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconsDecommission'{..}
          = go _bdXgafv _bdAccessToken _bdBearerToken
              _bdCallback
              (Just _bdPp)
              _bdUploadType
              _bdUploadProtocol
              _bdBeaconName
              _bdQuotaUser
              (Just _bdPrettyPrint)
              _bdFields
              _bdKey
              _bdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconsDecommissionResource)
                      r
                      u
