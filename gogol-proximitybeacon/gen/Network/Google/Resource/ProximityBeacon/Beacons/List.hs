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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches the beacon registry for beacons that match the given search
-- criteria. Only those beacons that the client has permission to list will
-- be returned.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.list@.
module Network.Google.Resource.ProximityBeacon.Beacons.List
    (
    -- * REST Resource
      BeaconsListResource

    -- * Creating a Request
    , beaconsList
    , BeaconsList

    -- * Request Lenses
    , blXgafv
    , blUploadProtocol
    , blPp
    , blAccessToken
    , blUploadType
    , blQ
    , blBearerToken
    , blPageToken
    , blPageSize
    , blCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.list@ method which the
-- 'BeaconsList' request conforms to.
type BeaconsListResource =
     "v1beta1" :>
       "beacons" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "q" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListBeaconsResponse

-- | Searches the beacon registry for beacons that match the given search
-- criteria. Only those beacons that the client has permission to list will
-- be returned.
--
-- /See:/ 'beaconsList' smart constructor.
data BeaconsList = BeaconsList
    { _blXgafv          :: !(Maybe Text)
    , _blUploadProtocol :: !(Maybe Text)
    , _blPp             :: !Bool
    , _blAccessToken    :: !(Maybe Text)
    , _blUploadType     :: !(Maybe Text)
    , _blQ              :: !(Maybe Text)
    , _blBearerToken    :: !(Maybe Text)
    , _blPageToken      :: !(Maybe Text)
    , _blPageSize       :: !(Maybe (Textual Int32))
    , _blCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blXgafv'
--
-- * 'blUploadProtocol'
--
-- * 'blPp'
--
-- * 'blAccessToken'
--
-- * 'blUploadType'
--
-- * 'blQ'
--
-- * 'blBearerToken'
--
-- * 'blPageToken'
--
-- * 'blPageSize'
--
-- * 'blCallback'
beaconsList
    :: BeaconsList
beaconsList =
    BeaconsList
    { _blXgafv = Nothing
    , _blUploadProtocol = Nothing
    , _blPp = True
    , _blAccessToken = Nothing
    , _blUploadType = Nothing
    , _blQ = Nothing
    , _blBearerToken = Nothing
    , _blPageToken = Nothing
    , _blPageSize = Nothing
    , _blCallback = Nothing
    }

-- | V1 error format.
blXgafv :: Lens' BeaconsList (Maybe Text)
blXgafv = lens _blXgafv (\ s a -> s{_blXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
blUploadProtocol :: Lens' BeaconsList (Maybe Text)
blUploadProtocol
  = lens _blUploadProtocol
      (\ s a -> s{_blUploadProtocol = a})

-- | Pretty-print response.
blPp :: Lens' BeaconsList Bool
blPp = lens _blPp (\ s a -> s{_blPp = a})

-- | OAuth access token.
blAccessToken :: Lens' BeaconsList (Maybe Text)
blAccessToken
  = lens _blAccessToken
      (\ s a -> s{_blAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
blUploadType :: Lens' BeaconsList (Maybe Text)
blUploadType
  = lens _blUploadType (\ s a -> s{_blUploadType = a})

-- | Filter query string that supports the following field filters: *
-- \`description:\"\"\` For example: \`description:\"Room 3\"\` Returns
-- beacons whose description matches tokens in the string \"Room 3\" (not
-- necessarily that exact string). The string must be double-quoted. *
-- \`status:\` For example: \`status:active\` Returns beacons whose status
-- matches the given value. Values must be one of the Beacon.Status enum
-- values (case insensitive). Accepts multiple filters which will be
-- combined with OR logic. * \`stability:\` For example:
-- \`stability:mobile\` Returns beacons whose expected stability matches
-- the given value. Values must be one of the Beacon.Stability enum values
-- (case insensitive). Accepts multiple filters which will be combined with
-- OR logic. * \`place_id:\"\"\` For example:
-- \`place_id:\"ChIJVSZzVR8FdkgRXGmmm6SslKw=\"\` Returns beacons explicitly
-- registered at the given place, expressed as a Place ID obtained from
-- [Google Places API](\/places\/place-id). Does not match places inside
-- the given place. Does not consider the beacon\'s actual location (which
-- may be different from its registered place). Accepts multiple filters
-- that will be combined with OR logic. The place ID must be double-quoted.
-- * \`registration_time[|=]\` For example:
-- \`registration_time>=1433116800\` Returns beacons whose registration
-- time matches the given filter. Supports the operators: , =. Timestamp
-- must be expressed as an integer number of seconds since midnight January
-- 1, 1970 UTC. Accepts at most two filters that will be combined with AND
-- logic, to support \"between\" semantics. If more than two are supplied,
-- the latter ones are ignored. * \`lat: lng: radius:\` For example:
-- \`lat:51.1232343 lng:-1.093852 radius:1000\` Returns beacons whose
-- registered location is within the given circle. When any of these fields
-- are given, all are required. Latitude and longitude must be decimal
-- degrees between -90.0 and 90.0 and between -180.0 and 180.0
-- respectively. Radius must be an integer number of meters less than
-- 1,000,000 (1000 km). * \`property:\"=\"\` For example:
-- \`property:\"battery-type=CR2032\"\` Returns beacons which have a
-- property of the given name and value. Supports multiple filters which
-- will be combined with OR logic. The entire name=value string must be
-- double-quoted as one string. * \`attachment_type:\"\"\` For example:
-- \`attachment_type:\"my-namespace\/my-type\"\` Returns beacons having at
-- least one attachment of the given namespaced type. Supports \"any within
-- this namespace\" via the partial wildcard syntax: \"my-namespace\/*\".
-- Supports multiple filters which will be combined with OR logic. The
-- string must be double-quoted. Multiple filters on the same field are
-- combined with OR logic (except registration_time which is combined with
-- AND logic). Multiple filters on different fields are combined with AND
-- logic. Filters should be separated by spaces. As with any HTTP query
-- string parameter, the whole filter expression must be URL-encoded.
-- Example REST request: \`GET
-- \/v1beta1\/beacons?q=status:active%20lat:51.123%20lng:-1.095%20radius:1000\`
blQ :: Lens' BeaconsList (Maybe Text)
blQ = lens _blQ (\ s a -> s{_blQ = a})

-- | OAuth bearer token.
blBearerToken :: Lens' BeaconsList (Maybe Text)
blBearerToken
  = lens _blBearerToken
      (\ s a -> s{_blBearerToken = a})

-- | A pagination token obtained from a previous request to list beacons.
blPageToken :: Lens' BeaconsList (Maybe Text)
blPageToken
  = lens _blPageToken (\ s a -> s{_blPageToken = a})

-- | The maximum number of records to return for this request, up to a
-- server-defined upper limit.
blPageSize :: Lens' BeaconsList (Maybe Int32)
blPageSize
  = lens _blPageSize (\ s a -> s{_blPageSize = a}) .
      mapping _Coerce

-- | JSONP
blCallback :: Lens' BeaconsList (Maybe Text)
blCallback
  = lens _blCallback (\ s a -> s{_blCallback = a})

instance GoogleRequest BeaconsList where
        type Rs BeaconsList = ListBeaconsResponse
        requestClient BeaconsList{..}
          = go _blXgafv _blUploadProtocol (Just _blPp)
              _blAccessToken
              _blUploadType
              _blQ
              _blBearerToken
              _blPageToken
              _blPageSize
              _blCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy BeaconsListResource)
                      mempty
