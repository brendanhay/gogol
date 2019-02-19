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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the diagnostics for a single beacon. You can also list diagnostics
-- for all the beacons owned by your Google Developers Console project by
-- using the beacon name \`beacons\/-\`. Authenticate using an [OAuth
-- access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.beacons.diagnostics.list@.
module Network.Google.Resource.ProximityBeacon.Beacons.Diagnostics.List
    (
    -- * REST Resource
      BeaconsDiagnosticsListResource

    -- * Creating a Request
    , beaconsDiagnosticsList
    , BeaconsDiagnosticsList

    -- * Request Lenses
    , bdlXgafv
    , bdlUploadProtocol
    , bdlAccessToken
    , bdlBeaconName
    , bdlUploadType
    , bdlPageToken
    , bdlProjectId
    , bdlPageSize
    , bdlAlertFilter
    , bdlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.diagnostics.list@ method which the
-- 'BeaconsDiagnosticsList' request conforms to.
type BeaconsDiagnosticsListResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         "diagnostics" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "alertFilter" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListDiagnosticsResponse

-- | List the diagnostics for a single beacon. You can also list diagnostics
-- for all the beacons owned by your Google Developers Console project by
-- using the beacon name \`beacons\/-\`. Authenticate using an [OAuth
-- access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ 'beaconsDiagnosticsList' smart constructor.
data BeaconsDiagnosticsList =
  BeaconsDiagnosticsList'
    { _bdlXgafv          :: !(Maybe Xgafv)
    , _bdlUploadProtocol :: !(Maybe Text)
    , _bdlAccessToken    :: !(Maybe Text)
    , _bdlBeaconName     :: !Text
    , _bdlUploadType     :: !(Maybe Text)
    , _bdlPageToken      :: !(Maybe Text)
    , _bdlProjectId      :: !(Maybe Text)
    , _bdlPageSize       :: !(Maybe (Textual Int32))
    , _bdlAlertFilter    :: !(Maybe Text)
    , _bdlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BeaconsDiagnosticsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdlXgafv'
--
-- * 'bdlUploadProtocol'
--
-- * 'bdlAccessToken'
--
-- * 'bdlBeaconName'
--
-- * 'bdlUploadType'
--
-- * 'bdlPageToken'
--
-- * 'bdlProjectId'
--
-- * 'bdlPageSize'
--
-- * 'bdlAlertFilter'
--
-- * 'bdlCallback'
beaconsDiagnosticsList
    :: Text -- ^ 'bdlBeaconName'
    -> BeaconsDiagnosticsList
beaconsDiagnosticsList pBdlBeaconName_ =
  BeaconsDiagnosticsList'
    { _bdlXgafv = Nothing
    , _bdlUploadProtocol = Nothing
    , _bdlAccessToken = Nothing
    , _bdlBeaconName = pBdlBeaconName_
    , _bdlUploadType = Nothing
    , _bdlPageToken = Nothing
    , _bdlProjectId = Nothing
    , _bdlPageSize = Nothing
    , _bdlAlertFilter = Nothing
    , _bdlCallback = Nothing
    }

-- | V1 error format.
bdlXgafv :: Lens' BeaconsDiagnosticsList (Maybe Xgafv)
bdlXgafv = lens _bdlXgafv (\ s a -> s{_bdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bdlUploadProtocol :: Lens' BeaconsDiagnosticsList (Maybe Text)
bdlUploadProtocol
  = lens _bdlUploadProtocol
      (\ s a -> s{_bdlUploadProtocol = a})

-- | OAuth access token.
bdlAccessToken :: Lens' BeaconsDiagnosticsList (Maybe Text)
bdlAccessToken
  = lens _bdlAccessToken
      (\ s a -> s{_bdlAccessToken = a})

-- | Beacon that the diagnostics are for.
bdlBeaconName :: Lens' BeaconsDiagnosticsList Text
bdlBeaconName
  = lens _bdlBeaconName
      (\ s a -> s{_bdlBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bdlUploadType :: Lens' BeaconsDiagnosticsList (Maybe Text)
bdlUploadType
  = lens _bdlUploadType
      (\ s a -> s{_bdlUploadType = a})

-- | Requests results that occur after the \`page_token\`, obtained from the
-- response to a previous request. Optional.
bdlPageToken :: Lens' BeaconsDiagnosticsList (Maybe Text)
bdlPageToken
  = lens _bdlPageToken (\ s a -> s{_bdlPageToken = a})

-- | Requests only diagnostic records for the given project id. If not set,
-- then the project making the request will be used for looking up
-- diagnostic records. Optional.
bdlProjectId :: Lens' BeaconsDiagnosticsList (Maybe Text)
bdlProjectId
  = lens _bdlProjectId (\ s a -> s{_bdlProjectId = a})

-- | Specifies the maximum number of results to return. Defaults to 10.
-- Maximum 1000. Optional.
bdlPageSize :: Lens' BeaconsDiagnosticsList (Maybe Int32)
bdlPageSize
  = lens _bdlPageSize (\ s a -> s{_bdlPageSize = a}) .
      mapping _Coerce

-- | Requests only beacons that have the given alert. For example, to find
-- beacons that have low batteries use \`alert_filter=LOW_BATTERY\`.
bdlAlertFilter :: Lens' BeaconsDiagnosticsList (Maybe Text)
bdlAlertFilter
  = lens _bdlAlertFilter
      (\ s a -> s{_bdlAlertFilter = a})

-- | JSONP
bdlCallback :: Lens' BeaconsDiagnosticsList (Maybe Text)
bdlCallback
  = lens _bdlCallback (\ s a -> s{_bdlCallback = a})

instance GoogleRequest BeaconsDiagnosticsList where
        type Rs BeaconsDiagnosticsList =
             ListDiagnosticsResponse
        type Scopes BeaconsDiagnosticsList =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient BeaconsDiagnosticsList'{..}
          = go _bdlBeaconName _bdlXgafv _bdlUploadProtocol
              _bdlAccessToken
              _bdlUploadType
              _bdlPageToken
              _bdlProjectId
              _bdlPageSize
              _bdlAlertFilter
              _bdlCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient
                      (Proxy :: Proxy BeaconsDiagnosticsListResource)
                      mempty
