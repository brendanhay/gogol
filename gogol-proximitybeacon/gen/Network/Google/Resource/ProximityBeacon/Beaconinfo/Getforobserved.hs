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
-- Module      : Network.Google.Resource.ProximityBeacon.Beaconinfo.Getforobserved
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Given one or more beacon observations, returns any beacon information
-- and attachments accessible to your application.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconBeaconinfoGetforobserved@.
module Network.Google.Resource.ProximityBeacon.Beaconinfo.Getforobserved
    (
    -- * REST Resource
      BeaconinfoGetforobservedResource

    -- * Creating a Request
    , beaconinfoGetforobserved'
    , BeaconinfoGetforobserved'

    -- * Request Lenses
    , bXgafv
    , bQuotaUser
    , bPrettyPrint
    , bUploadProtocol
    , bPp
    , bAccessToken
    , bUploadType
    , bBearerToken
    , bKey
    , bOauthToken
    , bFields
    , bCallback
    , bAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconBeaconinfoGetforobserved@ which the
-- 'BeaconinfoGetforobserved'' request conforms to.
type BeaconinfoGetforobservedResource =
     "v1beta1" :>
       "beaconinfo:getforobserved" :>
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
                                   Post '[JSON]
                                     GetInfoForObservedBeaconsResponse

-- | Given one or more beacon observations, returns any beacon information
-- and attachments accessible to your application.
--
-- /See:/ 'beaconinfoGetforobserved'' smart constructor.
data BeaconinfoGetforobserved' = BeaconinfoGetforobserved'
    { _bXgafv          :: !(Maybe Text)
    , _bQuotaUser      :: !(Maybe Text)
    , _bPrettyPrint    :: !Bool
    , _bUploadProtocol :: !(Maybe Text)
    , _bPp             :: !Bool
    , _bAccessToken    :: !(Maybe Text)
    , _bUploadType     :: !(Maybe Text)
    , _bBearerToken    :: !(Maybe Text)
    , _bKey            :: !(Maybe Text)
    , _bOauthToken     :: !(Maybe Text)
    , _bFields         :: !(Maybe Text)
    , _bCallback       :: !(Maybe Text)
    , _bAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconinfoGetforobserved'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bXgafv'
--
-- * 'bQuotaUser'
--
-- * 'bPrettyPrint'
--
-- * 'bUploadProtocol'
--
-- * 'bPp'
--
-- * 'bAccessToken'
--
-- * 'bUploadType'
--
-- * 'bBearerToken'
--
-- * 'bKey'
--
-- * 'bOauthToken'
--
-- * 'bFields'
--
-- * 'bCallback'
--
-- * 'bAlt'
beaconinfoGetforobserved'
    :: BeaconinfoGetforobserved'
beaconinfoGetforobserved' =
    BeaconinfoGetforobserved'
    { _bXgafv = Nothing
    , _bQuotaUser = Nothing
    , _bPrettyPrint = True
    , _bUploadProtocol = Nothing
    , _bPp = True
    , _bAccessToken = Nothing
    , _bUploadType = Nothing
    , _bBearerToken = Nothing
    , _bKey = Nothing
    , _bOauthToken = Nothing
    , _bFields = Nothing
    , _bCallback = Nothing
    , _bAlt = "json"
    }

-- | V1 error format.
bXgafv :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bXgafv = lens _bXgafv (\ s a -> s{_bXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
bQuotaUser :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bQuotaUser
  = lens _bQuotaUser (\ s a -> s{_bQuotaUser = a})

-- | Returns response with indentations and line breaks.
bPrettyPrint :: Lens' BeaconinfoGetforobserved' Bool
bPrettyPrint
  = lens _bPrettyPrint (\ s a -> s{_bPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bUploadProtocol :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bUploadProtocol
  = lens _bUploadProtocol
      (\ s a -> s{_bUploadProtocol = a})

-- | Pretty-print response.
bPp :: Lens' BeaconinfoGetforobserved' Bool
bPp = lens _bPp (\ s a -> s{_bPp = a})

-- | OAuth access token.
bAccessToken :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bAccessToken
  = lens _bAccessToken (\ s a -> s{_bAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bUploadType :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bUploadType
  = lens _bUploadType (\ s a -> s{_bUploadType = a})

-- | OAuth bearer token.
bBearerToken :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bBearerToken
  = lens _bBearerToken (\ s a -> s{_bBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bKey :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bKey = lens _bKey (\ s a -> s{_bKey = a})

-- | OAuth 2.0 token for the current user.
bOauthToken :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bOauthToken
  = lens _bOauthToken (\ s a -> s{_bOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bFields :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bFields = lens _bFields (\ s a -> s{_bFields = a})

-- | JSONP
bCallback :: Lens' BeaconinfoGetforobserved' (Maybe Text)
bCallback
  = lens _bCallback (\ s a -> s{_bCallback = a})

-- | Data format for response.
bAlt :: Lens' BeaconinfoGetforobserved' Text
bAlt = lens _bAlt (\ s a -> s{_bAlt = a})

instance GoogleRequest BeaconinfoGetforobserved'
         where
        type Rs BeaconinfoGetforobserved' =
             GetInfoForObservedBeaconsResponse
        request = requestWithRoute defReq proximityBeaconURL
        requestWithRoute r u BeaconinfoGetforobserved'{..}
          = go _bXgafv _bQuotaUser (Just _bPrettyPrint)
              _bUploadProtocol
              (Just _bPp)
              _bAccessToken
              _bUploadType
              _bBearerToken
              _bKey
              _bOauthToken
              _bFields
              _bCallback
              (Just _bAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BeaconinfoGetforobservedResource)
                      r
                      u
