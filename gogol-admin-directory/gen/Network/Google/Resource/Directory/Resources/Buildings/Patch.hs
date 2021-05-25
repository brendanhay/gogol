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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.patch@.
module Network.Google.Resource.Directory.Resources.Buildings.Patch
    (
    -- * REST Resource
      ResourcesBuildingsPatchResource

    -- * Creating a Request
    , resourcesBuildingsPatch
    , ResourcesBuildingsPatch

    -- * Request Lenses
    , rbpXgafv
    , rbpUploadProtocol
    , rbpAccessToken
    , rbpBuildingId
    , rbpUploadType
    , rbpPayload
    , rbpCustomer
    , rbpCoordinatesSource
    , rbpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.patch@ method which the
-- 'ResourcesBuildingsPatch' request conforms to.
type ResourcesBuildingsPatchResource =
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
                               ResourcesBuildingsPatchCoordinatesSource
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Building :>
                                     Patch '[JSON] Building

-- | Patches a building.
--
-- /See:/ 'resourcesBuildingsPatch' smart constructor.
data ResourcesBuildingsPatch =
  ResourcesBuildingsPatch'
    { _rbpXgafv :: !(Maybe Xgafv)
    , _rbpUploadProtocol :: !(Maybe Text)
    , _rbpAccessToken :: !(Maybe Text)
    , _rbpBuildingId :: !Text
    , _rbpUploadType :: !(Maybe Text)
    , _rbpPayload :: !Building
    , _rbpCustomer :: !Text
    , _rbpCoordinatesSource :: !ResourcesBuildingsPatchCoordinatesSource
    , _rbpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesBuildingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbpXgafv'
--
-- * 'rbpUploadProtocol'
--
-- * 'rbpAccessToken'
--
-- * 'rbpBuildingId'
--
-- * 'rbpUploadType'
--
-- * 'rbpPayload'
--
-- * 'rbpCustomer'
--
-- * 'rbpCoordinatesSource'
--
-- * 'rbpCallback'
resourcesBuildingsPatch
    :: Text -- ^ 'rbpBuildingId'
    -> Building -- ^ 'rbpPayload'
    -> Text -- ^ 'rbpCustomer'
    -> ResourcesBuildingsPatch
resourcesBuildingsPatch pRbpBuildingId_ pRbpPayload_ pRbpCustomer_ =
  ResourcesBuildingsPatch'
    { _rbpXgafv = Nothing
    , _rbpUploadProtocol = Nothing
    , _rbpAccessToken = Nothing
    , _rbpBuildingId = pRbpBuildingId_
    , _rbpUploadType = Nothing
    , _rbpPayload = pRbpPayload_
    , _rbpCustomer = pRbpCustomer_
    , _rbpCoordinatesSource = SourceUnspecified
    , _rbpCallback = Nothing
    }


-- | V1 error format.
rbpXgafv :: Lens' ResourcesBuildingsPatch (Maybe Xgafv)
rbpXgafv = lens _rbpXgafv (\ s a -> s{_rbpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rbpUploadProtocol :: Lens' ResourcesBuildingsPatch (Maybe Text)
rbpUploadProtocol
  = lens _rbpUploadProtocol
      (\ s a -> s{_rbpUploadProtocol = a})

-- | OAuth access token.
rbpAccessToken :: Lens' ResourcesBuildingsPatch (Maybe Text)
rbpAccessToken
  = lens _rbpAccessToken
      (\ s a -> s{_rbpAccessToken = a})

-- | The id of the building to update.
rbpBuildingId :: Lens' ResourcesBuildingsPatch Text
rbpBuildingId
  = lens _rbpBuildingId
      (\ s a -> s{_rbpBuildingId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rbpUploadType :: Lens' ResourcesBuildingsPatch (Maybe Text)
rbpUploadType
  = lens _rbpUploadType
      (\ s a -> s{_rbpUploadType = a})

-- | Multipart request metadata.
rbpPayload :: Lens' ResourcesBuildingsPatch Building
rbpPayload
  = lens _rbpPayload (\ s a -> s{_rbpPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rbpCustomer :: Lens' ResourcesBuildingsPatch Text
rbpCustomer
  = lens _rbpCustomer (\ s a -> s{_rbpCustomer = a})

-- | Source from which Building.coordinates are derived.
rbpCoordinatesSource :: Lens' ResourcesBuildingsPatch ResourcesBuildingsPatchCoordinatesSource
rbpCoordinatesSource
  = lens _rbpCoordinatesSource
      (\ s a -> s{_rbpCoordinatesSource = a})

-- | JSONP
rbpCallback :: Lens' ResourcesBuildingsPatch (Maybe Text)
rbpCallback
  = lens _rbpCallback (\ s a -> s{_rbpCallback = a})

instance GoogleRequest ResourcesBuildingsPatch where
        type Rs ResourcesBuildingsPatch = Building
        type Scopes ResourcesBuildingsPatch =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesBuildingsPatch'{..}
          = go _rbpCustomer _rbpBuildingId _rbpXgafv
              _rbpUploadProtocol
              _rbpAccessToken
              _rbpUploadType
              (Just _rbpCoordinatesSource)
              _rbpCallback
              (Just AltJSON)
              _rbpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsPatchResource)
                      mempty
