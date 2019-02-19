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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches the beacon registry for beacons that match the given search
-- criteria. Only those beacons that the client has permission to list will
-- be returned. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.list@.
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
    , blAccessToken
    , blUploadType
    , blQ
    , blPageToken
    , blProjectId
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
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "q" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListBeaconsResponse

-- | Searches the beacon registry for beacons that match the given search
-- criteria. Only those beacons that the client has permission to list will
-- be returned. Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ 'beaconsList' smart constructor.
data BeaconsList =
  BeaconsList'
    { _blXgafv          :: !(Maybe Xgafv)
    , _blUploadProtocol :: !(Maybe Text)
    , _blAccessToken    :: !(Maybe Text)
    , _blUploadType     :: !(Maybe Text)
    , _blQ              :: !(Maybe Text)
    , _blPageToken      :: !(Maybe Text)
    , _blProjectId      :: !(Maybe Text)
    , _blPageSize       :: !(Maybe (Textual Int32))
    , _blCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BeaconsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blXgafv'
--
-- * 'blUploadProtocol'
--
-- * 'blAccessToken'
--
-- * 'blUploadType'
--
-- * 'blQ'
--
-- * 'blPageToken'
--
-- * 'blProjectId'
--
-- * 'blPageSize'
--
-- * 'blCallback'
beaconsList
    :: BeaconsList
beaconsList =
  BeaconsList'
    { _blXgafv = Nothing
    , _blUploadProtocol = Nothing
    , _blAccessToken = Nothing
    , _blUploadType = Nothing
    , _blQ = Nothing
    , _blPageToken = Nothing
    , _blProjectId = Nothing
    , _blPageSize = Nothing
    , _blCallback = Nothing
    }


-- | V1 error format.
blXgafv :: Lens' BeaconsList (Maybe Xgafv)
blXgafv = lens _blXgafv (\ s a -> s{_blXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
blUploadProtocol :: Lens' BeaconsList (Maybe Text)
blUploadProtocol
  = lens _blUploadProtocol
      (\ s a -> s{_blUploadProtocol = a})

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
-- **description:\`\"\"\`** For example: **description:\"Room 3\"** Returns
-- beacons whose description matches tokens in the string \"Room 3\" (not
-- necessarily that exact string). The string must be double-quoted. *
-- **status:\`\`** For example: **status:active** Returns beacons whose
-- status matches the given value. Values must be one of the Beacon.Status
-- enum values (case insensitive). Accepts multiple filters which will be
-- combined with OR logic. * **stability:\`\`** For example:
-- **stability:mobile** Returns beacons whose expected stability matches
-- the given value. Values must be one of the Beacon.Stability enum values
-- (case insensitive). Accepts multiple filters which will be combined with
-- OR logic. * **place\\_id:\`\"\"\`** For example:
-- **place\\_id:\"ChIJVSZzVR8FdkgRXGmmm6SslKw=\"** Returns beacons
-- explicitly registered at the given place, expressed as a Place ID
-- obtained from [Google Places API](\/places\/place-id). Does not match
-- places inside the given place. Does not consider the beacon\'s actual
-- location (which may be different from its registered place). Accepts
-- multiple filters that will be combined with OR logic. The place ID must
-- be double-quoted. * **registration\\_time\`[\<|>|\<=|>=]\`** For
-- example: **registration\\_time>=1433116800** Returns beacons whose
-- registration time matches the given filter. Supports the operators: \<,
-- >, \<=, and >=. Timestamp must be expressed as an integer number of
-- seconds since midnight January 1, 1970 UTC. Accepts at most two filters
-- that will be combined with AND logic, to support \"between\" semantics.
-- If more than two are supplied, the latter ones are ignored. * **lat:\`
-- lng: radius:\`** For example: **lat:51.1232343 lng:-1.093852
-- radius:1000** Returns beacons whose registered location is within the
-- given circle. When any of these fields are given, all are required.
-- Latitude and longitude must be decimal degrees between -90.0 and 90.0
-- and between -180.0 and 180.0 respectively. Radius must be an integer
-- number of meters between 10 and 1,000,000 (1000 km). *
-- **property:\`\"=\"\`** For example: **property:\"battery-type=CR2032\"**
-- Returns beacons which have a property of the given name and value.
-- Supports multiple filters which will be combined with OR logic. The
-- entire name=value string must be double-quoted as one string. *
-- **attachment\\_type:\`\"\"\`** For example:
-- **attachment_type:\"my-namespace\/my-type\"** Returns beacons having at
-- least one attachment of the given namespaced type. Supports \"any within
-- this namespace\" via the partial wildcard syntax: \"my-namespace\/*\".
-- Supports multiple filters which will be combined with OR logic. The
-- string must be double-quoted. * **indoor\\_level:\`\"\"\`** For example:
-- **indoor\\_level:\"1\"** Returns beacons which are located on the given
-- indoor level. Accepts multiple filters that will be combined with OR
-- logic. Multiple filters on the same field are combined with OR logic
-- (except registration_time which is combined with AND logic). Multiple
-- filters on different fields are combined with AND logic. Filters should
-- be separated by spaces. As with any HTTP query string parameter, the
-- whole filter expression must be URL-encoded. Example REST request: \`GET
-- \/v1beta1\/beacons?q=status:active%20lat:51.123%20lng:-1.095%20radius:1000\`
blQ :: Lens' BeaconsList (Maybe Text)
blQ = lens _blQ (\ s a -> s{_blQ = a})

-- | A pagination token obtained from a previous request to list beacons.
blPageToken :: Lens' BeaconsList (Maybe Text)
blPageToken
  = lens _blPageToken (\ s a -> s{_blPageToken = a})

-- | The project id to list beacons under. If not present then the project
-- credential that made the request is used as the project. Optional.
blProjectId :: Lens' BeaconsList (Maybe Text)
blProjectId
  = lens _blProjectId (\ s a -> s{_blProjectId = a})

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
        type Scopes BeaconsList =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsList'{..}
          = go _blXgafv _blUploadProtocol _blAccessToken
              _blUploadType
              _blQ
              _blPageToken
              _blProjectId
              _blPageSize
              _blCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy BeaconsListResource)
                      mempty
