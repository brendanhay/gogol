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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.update@.
module Network.Google.Resource.Directory.Resources.Buildings.Update
    (
    -- * REST Resource
      ResourcesBuildingsUpdateResource

    -- * Creating a Request
    , resourcesBuildingsUpdate
    , ResourcesBuildingsUpdate

    -- * Request Lenses
    , rbuXgafv
    , rbuUploadProtocol
    , rbuAccessToken
    , rbuBuildingId
    , rbuUploadType
    , rbuPayload
    , rbuCustomer
    , rbuCoordinatesSource
    , rbuCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.update@ method which the
-- 'ResourcesBuildingsUpdate' request conforms to.
type ResourcesBuildingsUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "buildings" :>
                   Capture "buildingId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "coordinatesSource"
                               ResourcesBuildingsUpdateCoordinatesSource
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Building :>
                                     Put '[JSON] Building

-- | Updates a building.
--
-- /See:/ 'resourcesBuildingsUpdate' smart constructor.
data ResourcesBuildingsUpdate =
  ResourcesBuildingsUpdate'
    { _rbuXgafv :: !(Maybe Xgafv)
    , _rbuUploadProtocol :: !(Maybe Text)
    , _rbuAccessToken :: !(Maybe Text)
    , _rbuBuildingId :: !Text
    , _rbuUploadType :: !(Maybe Text)
    , _rbuPayload :: !Building
    , _rbuCustomer :: !Text
    , _rbuCoordinatesSource :: !ResourcesBuildingsUpdateCoordinatesSource
    , _rbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesBuildingsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbuXgafv'
--
-- * 'rbuUploadProtocol'
--
-- * 'rbuAccessToken'
--
-- * 'rbuBuildingId'
--
-- * 'rbuUploadType'
--
-- * 'rbuPayload'
--
-- * 'rbuCustomer'
--
-- * 'rbuCoordinatesSource'
--
-- * 'rbuCallback'
resourcesBuildingsUpdate
    :: Text -- ^ 'rbuBuildingId'
    -> Building -- ^ 'rbuPayload'
    -> Text -- ^ 'rbuCustomer'
    -> ResourcesBuildingsUpdate
resourcesBuildingsUpdate pRbuBuildingId_ pRbuPayload_ pRbuCustomer_ =
  ResourcesBuildingsUpdate'
    { _rbuXgafv = Nothing
    , _rbuUploadProtocol = Nothing
    , _rbuAccessToken = Nothing
    , _rbuBuildingId = pRbuBuildingId_
    , _rbuUploadType = Nothing
    , _rbuPayload = pRbuPayload_
    , _rbuCustomer = pRbuCustomer_
    , _rbuCoordinatesSource = RBUCSSourceUnspecified
    , _rbuCallback = Nothing
    }


-- | V1 error format.
rbuXgafv :: Lens' ResourcesBuildingsUpdate (Maybe Xgafv)
rbuXgafv = lens _rbuXgafv (\ s a -> s{_rbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rbuUploadProtocol :: Lens' ResourcesBuildingsUpdate (Maybe Text)
rbuUploadProtocol
  = lens _rbuUploadProtocol
      (\ s a -> s{_rbuUploadProtocol = a})

-- | OAuth access token.
rbuAccessToken :: Lens' ResourcesBuildingsUpdate (Maybe Text)
rbuAccessToken
  = lens _rbuAccessToken
      (\ s a -> s{_rbuAccessToken = a})

-- | The id of the building to update.
rbuBuildingId :: Lens' ResourcesBuildingsUpdate Text
rbuBuildingId
  = lens _rbuBuildingId
      (\ s a -> s{_rbuBuildingId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rbuUploadType :: Lens' ResourcesBuildingsUpdate (Maybe Text)
rbuUploadType
  = lens _rbuUploadType
      (\ s a -> s{_rbuUploadType = a})

-- | Multipart request metadata.
rbuPayload :: Lens' ResourcesBuildingsUpdate Building
rbuPayload
  = lens _rbuPayload (\ s a -> s{_rbuPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rbuCustomer :: Lens' ResourcesBuildingsUpdate Text
rbuCustomer
  = lens _rbuCustomer (\ s a -> s{_rbuCustomer = a})

-- | Source from which Building.coordinates are derived.
rbuCoordinatesSource :: Lens' ResourcesBuildingsUpdate ResourcesBuildingsUpdateCoordinatesSource
rbuCoordinatesSource
  = lens _rbuCoordinatesSource
      (\ s a -> s{_rbuCoordinatesSource = a})

-- | JSONP
rbuCallback :: Lens' ResourcesBuildingsUpdate (Maybe Text)
rbuCallback
  = lens _rbuCallback (\ s a -> s{_rbuCallback = a})

instance GoogleRequest ResourcesBuildingsUpdate where
        type Rs ResourcesBuildingsUpdate = Building
        type Scopes ResourcesBuildingsUpdate =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesBuildingsUpdate'{..}
          = go _rbuCustomer _rbuBuildingId _rbuXgafv
              _rbuUploadProtocol
              _rbuAccessToken
              _rbuUploadType
              (Just _rbuCoordinatesSource)
              _rbuCallback
              (Just AltJSON)
              _rbuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsUpdateResource)
                      mempty
