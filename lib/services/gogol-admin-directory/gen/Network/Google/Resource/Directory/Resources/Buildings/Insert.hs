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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.insert@.
module Network.Google.Resource.Directory.Resources.Buildings.Insert
    (
    -- * REST Resource
      ResourcesBuildingsInsertResource

    -- * Creating a Request
    , resourcesBuildingsInsert
    , ResourcesBuildingsInsert

    -- * Request Lenses
    , rbiXgafv
    , rbiUploadProtocol
    , rbiAccessToken
    , rbiUploadType
    , rbiPayload
    , rbiCustomer
    , rbiCoordinatesSource
    , rbiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.insert@ method which the
-- 'ResourcesBuildingsInsert' request conforms to.
type ResourcesBuildingsInsertResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customer" Text :>
               "resources" :>
                 "buildings" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "coordinatesSource"
                             ResourcesBuildingsInsertCoordinatesSource
                             :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Building :>
                                   Post '[JSON] Building

-- | Inserts a building.
--
-- /See:/ 'resourcesBuildingsInsert' smart constructor.
data ResourcesBuildingsInsert =
  ResourcesBuildingsInsert'
    { _rbiXgafv :: !(Maybe Xgafv)
    , _rbiUploadProtocol :: !(Maybe Text)
    , _rbiAccessToken :: !(Maybe Text)
    , _rbiUploadType :: !(Maybe Text)
    , _rbiPayload :: !Building
    , _rbiCustomer :: !Text
    , _rbiCoordinatesSource :: !ResourcesBuildingsInsertCoordinatesSource
    , _rbiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesBuildingsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbiXgafv'
--
-- * 'rbiUploadProtocol'
--
-- * 'rbiAccessToken'
--
-- * 'rbiUploadType'
--
-- * 'rbiPayload'
--
-- * 'rbiCustomer'
--
-- * 'rbiCoordinatesSource'
--
-- * 'rbiCallback'
resourcesBuildingsInsert
    :: Building -- ^ 'rbiPayload'
    -> Text -- ^ 'rbiCustomer'
    -> ResourcesBuildingsInsert
resourcesBuildingsInsert pRbiPayload_ pRbiCustomer_ =
  ResourcesBuildingsInsert'
    { _rbiXgafv = Nothing
    , _rbiUploadProtocol = Nothing
    , _rbiAccessToken = Nothing
    , _rbiUploadType = Nothing
    , _rbiPayload = pRbiPayload_
    , _rbiCustomer = pRbiCustomer_
    , _rbiCoordinatesSource = RBICSSourceUnspecified
    , _rbiCallback = Nothing
    }


-- | V1 error format.
rbiXgafv :: Lens' ResourcesBuildingsInsert (Maybe Xgafv)
rbiXgafv = lens _rbiXgafv (\ s a -> s{_rbiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rbiUploadProtocol :: Lens' ResourcesBuildingsInsert (Maybe Text)
rbiUploadProtocol
  = lens _rbiUploadProtocol
      (\ s a -> s{_rbiUploadProtocol = a})

-- | OAuth access token.
rbiAccessToken :: Lens' ResourcesBuildingsInsert (Maybe Text)
rbiAccessToken
  = lens _rbiAccessToken
      (\ s a -> s{_rbiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rbiUploadType :: Lens' ResourcesBuildingsInsert (Maybe Text)
rbiUploadType
  = lens _rbiUploadType
      (\ s a -> s{_rbiUploadType = a})

-- | Multipart request metadata.
rbiPayload :: Lens' ResourcesBuildingsInsert Building
rbiPayload
  = lens _rbiPayload (\ s a -> s{_rbiPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rbiCustomer :: Lens' ResourcesBuildingsInsert Text
rbiCustomer
  = lens _rbiCustomer (\ s a -> s{_rbiCustomer = a})

-- | Source from which Building.coordinates are derived.
rbiCoordinatesSource :: Lens' ResourcesBuildingsInsert ResourcesBuildingsInsertCoordinatesSource
rbiCoordinatesSource
  = lens _rbiCoordinatesSource
      (\ s a -> s{_rbiCoordinatesSource = a})

-- | JSONP
rbiCallback :: Lens' ResourcesBuildingsInsert (Maybe Text)
rbiCallback
  = lens _rbiCallback (\ s a -> s{_rbiCallback = a})

instance GoogleRequest ResourcesBuildingsInsert where
        type Rs ResourcesBuildingsInsert = Building
        type Scopes ResourcesBuildingsInsert =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesBuildingsInsert'{..}
          = go _rbiCustomer _rbiXgafv _rbiUploadProtocol
              _rbiAccessToken
              _rbiUploadType
              (Just _rbiCoordinatesSource)
              _rbiCallback
              (Just AltJSON)
              _rbiPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsInsertResource)
                      mempty
