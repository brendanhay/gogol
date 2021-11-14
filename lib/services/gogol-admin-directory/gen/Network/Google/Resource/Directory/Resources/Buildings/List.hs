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
-- Module      : Network.Google.Resource.Directory.Resources.Buildings.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of buildings for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.buildings.list@.
module Network.Google.Resource.Directory.Resources.Buildings.List
    (
    -- * REST Resource
      ResourcesBuildingsListResource

    -- * Creating a Request
    , resourcesBuildingsList
    , ResourcesBuildingsList

    -- * Request Lenses
    , rblXgafv
    , rblUploadProtocol
    , rblAccessToken
    , rblUploadType
    , rblCustomer
    , rblPageToken
    , rblMaxResults
    , rblCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.resources.buildings.list@ method which the
-- 'ResourcesBuildingsList' request conforms to.
type ResourcesBuildingsListResource =
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
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Buildings

-- | Retrieves a list of buildings for an account.
--
-- /See:/ 'resourcesBuildingsList' smart constructor.
data ResourcesBuildingsList =
  ResourcesBuildingsList'
    { _rblXgafv :: !(Maybe Xgafv)
    , _rblUploadProtocol :: !(Maybe Text)
    , _rblAccessToken :: !(Maybe Text)
    , _rblUploadType :: !(Maybe Text)
    , _rblCustomer :: !Text
    , _rblPageToken :: !(Maybe Text)
    , _rblMaxResults :: !(Maybe (Textual Int32))
    , _rblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcesBuildingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rblXgafv'
--
-- * 'rblUploadProtocol'
--
-- * 'rblAccessToken'
--
-- * 'rblUploadType'
--
-- * 'rblCustomer'
--
-- * 'rblPageToken'
--
-- * 'rblMaxResults'
--
-- * 'rblCallback'
resourcesBuildingsList
    :: Text -- ^ 'rblCustomer'
    -> ResourcesBuildingsList
resourcesBuildingsList pRblCustomer_ =
  ResourcesBuildingsList'
    { _rblXgafv = Nothing
    , _rblUploadProtocol = Nothing
    , _rblAccessToken = Nothing
    , _rblUploadType = Nothing
    , _rblCustomer = pRblCustomer_
    , _rblPageToken = Nothing
    , _rblMaxResults = Nothing
    , _rblCallback = Nothing
    }


-- | V1 error format.
rblXgafv :: Lens' ResourcesBuildingsList (Maybe Xgafv)
rblXgafv = lens _rblXgafv (\ s a -> s{_rblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rblUploadProtocol :: Lens' ResourcesBuildingsList (Maybe Text)
rblUploadProtocol
  = lens _rblUploadProtocol
      (\ s a -> s{_rblUploadProtocol = a})

-- | OAuth access token.
rblAccessToken :: Lens' ResourcesBuildingsList (Maybe Text)
rblAccessToken
  = lens _rblAccessToken
      (\ s a -> s{_rblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rblUploadType :: Lens' ResourcesBuildingsList (Maybe Text)
rblUploadType
  = lens _rblUploadType
      (\ s a -> s{_rblUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s customer ID.
rblCustomer :: Lens' ResourcesBuildingsList Text
rblCustomer
  = lens _rblCustomer (\ s a -> s{_rblCustomer = a})

-- | Token to specify the next page in the list.
rblPageToken :: Lens' ResourcesBuildingsList (Maybe Text)
rblPageToken
  = lens _rblPageToken (\ s a -> s{_rblPageToken = a})

-- | Maximum number of results to return.
rblMaxResults :: Lens' ResourcesBuildingsList (Maybe Int32)
rblMaxResults
  = lens _rblMaxResults
      (\ s a -> s{_rblMaxResults = a})
      . mapping _Coerce

-- | JSONP
rblCallback :: Lens' ResourcesBuildingsList (Maybe Text)
rblCallback
  = lens _rblCallback (\ s a -> s{_rblCallback = a})

instance GoogleRequest ResourcesBuildingsList where
        type Rs ResourcesBuildingsList = Buildings
        type Scopes ResourcesBuildingsList =
             '["https://www.googleapis.com/auth/admin.directory.resource.calendar",
               "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"]
        requestClient ResourcesBuildingsList'{..}
          = go _rblCustomer _rblXgafv _rblUploadProtocol
              _rblAccessToken
              _rblUploadType
              _rblPageToken
              _rblMaxResults
              _rblCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcesBuildingsListResource)
                      mempty
