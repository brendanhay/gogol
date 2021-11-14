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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a building.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.delete@.
module Network.Google.Resource.Directory.Resources.Buildings.Delete
    (
    -- * REST Resource
      ResourcesBuildingsDeleteResource

    -- * Creating a Request
    , resourcesBuildingsDelete
    , ResourcesBuildingsDelete

    -- * Request Lenses
    , rbdXgafv
    , rbdUploadProtocol
    , rbdAccessToken
    , rbdBuildingId
    , rbdUploadType
    , rbdCustomer
    , rbdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.delete@ method which the
-- 'ResourcesBuildingsDelete' request conforms to.
type ResourcesBuildingsDeleteResource =
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
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a building.
--
-- /See:/ 'resourcesBuildingsDelete' smart constructor.
data ResourcesBuildingsDelete =
  ResourcesBuildingsDelete'
    { _rbdXgafv :: !(Maybe Xgafv)
    , _rbdUploadProtocol :: !(Maybe Text)
    , _rbdAccessToken :: !(Maybe Text)
    , _rbdBuildingId :: !Text
    , _rbdUploadType :: !(Maybe Text)
    , _rbdCustomer :: !Text
    , _rbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesBuildingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbdXgafv'
--
-- * 'rbdUploadProtocol'
--
-- * 'rbdAccessToken'
--
-- * 'rbdBuildingId'
--
-- * 'rbdUploadType'
--
-- * 'rbdCustomer'
--
-- * 'rbdCallback'
resourcesBuildingsDelete
    :: Text -- ^ 'rbdBuildingId'
    -> Text -- ^ 'rbdCustomer'
    -> ResourcesBuildingsDelete
resourcesBuildingsDelete pRbdBuildingId_ pRbdCustomer_ =
  ResourcesBuildingsDelete'
    { _rbdXgafv = Nothing
    , _rbdUploadProtocol = Nothing
    , _rbdAccessToken = Nothing
    , _rbdBuildingId = pRbdBuildingId_
    , _rbdUploadType = Nothing
    , _rbdCustomer = pRbdCustomer_
    , _rbdCallback = Nothing
    }


-- | V1 error format.
rbdXgafv :: Lens' ResourcesBuildingsDelete (Maybe Xgafv)
rbdXgafv = lens _rbdXgafv (\ s a -> s{_rbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rbdUploadProtocol :: Lens' ResourcesBuildingsDelete (Maybe Text)
rbdUploadProtocol
  = lens _rbdUploadProtocol
      (\ s a -> s{_rbdUploadProtocol = a})

-- | OAuth access token.
rbdAccessToken :: Lens' ResourcesBuildingsDelete (Maybe Text)
rbdAccessToken
  = lens _rbdAccessToken
      (\ s a -> s{_rbdAccessToken = a})

-- | The id of the building to delete.
rbdBuildingId :: Lens' ResourcesBuildingsDelete Text
rbdBuildingId
  = lens _rbdBuildingId
      (\ s a -> s{_rbdBuildingId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rbdUploadType :: Lens' ResourcesBuildingsDelete (Maybe Text)
rbdUploadType
  = lens _rbdUploadType
      (\ s a -> s{_rbdUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rbdCustomer :: Lens' ResourcesBuildingsDelete Text
rbdCustomer
  = lens _rbdCustomer (\ s a -> s{_rbdCustomer = a})

-- | JSONP
rbdCallback :: Lens' ResourcesBuildingsDelete (Maybe Text)
rbdCallback
  = lens _rbdCallback (\ s a -> s{_rbdCallback = a})

instance GoogleRequest ResourcesBuildingsDelete where
        type Rs ResourcesBuildingsDelete = ()
        type Scopes ResourcesBuildingsDelete =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar"]
        requestClient ResourcesBuildingsDelete'{..}
          = go _rbdCustomer _rbdBuildingId _rbdXgafv
              _rbdUploadProtocol
              _rbdAccessToken
              _rbdUploadType
              _rbdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsDeleteResource)
                      mempty
