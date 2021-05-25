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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.get@.
module Network.Google.Resource.Directory.Resources.Buildings.Get
    (
    -- * REST Resource
      ResourcesBuildingsGetResource

    -- * Creating a Request
    , resourcesBuildingsGet
    , ResourcesBuildingsGet

    -- * Request Lenses
    , rbgXgafv
    , rbgUploadProtocol
    , rbgAccessToken
    , rbgBuildingId
    , rbgUploadType
    , rbgCustomer
    , rbgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.get@ method which the
-- 'ResourcesBuildingsGet' request conforms to.
type ResourcesBuildingsGetResource =
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
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Building

-- | Retrieves a building.
--
-- /See:/ 'resourcesBuildingsGet' smart constructor.
data ResourcesBuildingsGet =
  ResourcesBuildingsGet'
    { _rbgXgafv :: !(Maybe Xgafv)
    , _rbgUploadProtocol :: !(Maybe Text)
    , _rbgAccessToken :: !(Maybe Text)
    , _rbgBuildingId :: !Text
    , _rbgUploadType :: !(Maybe Text)
    , _rbgCustomer :: !Text
    , _rbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesBuildingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbgXgafv'
--
-- * 'rbgUploadProtocol'
--
-- * 'rbgAccessToken'
--
-- * 'rbgBuildingId'
--
-- * 'rbgUploadType'
--
-- * 'rbgCustomer'
--
-- * 'rbgCallback'
resourcesBuildingsGet
    :: Text -- ^ 'rbgBuildingId'
    -> Text -- ^ 'rbgCustomer'
    -> ResourcesBuildingsGet
resourcesBuildingsGet pRbgBuildingId_ pRbgCustomer_ =
  ResourcesBuildingsGet'
    { _rbgXgafv = Nothing
    , _rbgUploadProtocol = Nothing
    , _rbgAccessToken = Nothing
    , _rbgBuildingId = pRbgBuildingId_
    , _rbgUploadType = Nothing
    , _rbgCustomer = pRbgCustomer_
    , _rbgCallback = Nothing
    }


-- | V1 error format.
rbgXgafv :: Lens' ResourcesBuildingsGet (Maybe Xgafv)
rbgXgafv = lens _rbgXgafv (\ s a -> s{_rbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rbgUploadProtocol :: Lens' ResourcesBuildingsGet (Maybe Text)
rbgUploadProtocol
  = lens _rbgUploadProtocol
      (\ s a -> s{_rbgUploadProtocol = a})

-- | OAuth access token.
rbgAccessToken :: Lens' ResourcesBuildingsGet (Maybe Text)
rbgAccessToken
  = lens _rbgAccessToken
      (\ s a -> s{_rbgAccessToken = a})

-- | The unique ID of the building to retrieve.
rbgBuildingId :: Lens' ResourcesBuildingsGet Text
rbgBuildingId
  = lens _rbgBuildingId
      (\ s a -> s{_rbgBuildingId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rbgUploadType :: Lens' ResourcesBuildingsGet (Maybe Text)
rbgUploadType
  = lens _rbgUploadType
      (\ s a -> s{_rbgUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rbgCustomer :: Lens' ResourcesBuildingsGet Text
rbgCustomer
  = lens _rbgCustomer (\ s a -> s{_rbgCustomer = a})

-- | JSONP
rbgCallback :: Lens' ResourcesBuildingsGet (Maybe Text)
rbgCallback
  = lens _rbgCallback (\ s a -> s{_rbgCallback = a})

instance GoogleRequest ResourcesBuildingsGet where
        type Rs ResourcesBuildingsGet = Building
        type Scopes ResourcesBuildingsGet =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesBuildingsGet'{..}
          = go _rbgCustomer _rbgBuildingId _rbgXgafv
              _rbgUploadProtocol
              _rbgAccessToken
              _rbgUploadType
              _rbgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsGetResource)
                      mempty
