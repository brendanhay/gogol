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
-- Module      : Network.Google.Resource.Run.Projects.Locations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about the supported locations for this service.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.list@.
module Network.Google.Resource.Run.Projects.Locations.List
    (
    -- * REST Resource
      ProjectsLocationsListResource

    -- * Creating a Request
    , projectsLocationsList
    , ProjectsLocationsList

    -- * Request Lenses
    , pllXgafv
    , pllUploadProtocol
    , pllAccessToken
    , pllUploadType
    , pllName
    , pllFilter
    , pllPageToken
    , pllPageSize
    , pllCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.list@ method which the
-- 'ProjectsLocationsList' request conforms to.
type ProjectsLocationsListResource =
     "v1" :>
       Capture "name" Text :>
         "locations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListLocationsResponse

-- | Lists information about the supported locations for this service.
--
-- /See:/ 'projectsLocationsList' smart constructor.
data ProjectsLocationsList =
  ProjectsLocationsList'
    { _pllXgafv :: !(Maybe Xgafv)
    , _pllUploadProtocol :: !(Maybe Text)
    , _pllAccessToken :: !(Maybe Text)
    , _pllUploadType :: !(Maybe Text)
    , _pllName :: !Text
    , _pllFilter :: !(Maybe Text)
    , _pllPageToken :: !(Maybe Text)
    , _pllPageSize :: !(Maybe (Textual Int32))
    , _pllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllXgafv'
--
-- * 'pllUploadProtocol'
--
-- * 'pllAccessToken'
--
-- * 'pllUploadType'
--
-- * 'pllName'
--
-- * 'pllFilter'
--
-- * 'pllPageToken'
--
-- * 'pllPageSize'
--
-- * 'pllCallback'
projectsLocationsList
    :: Text -- ^ 'pllName'
    -> ProjectsLocationsList
projectsLocationsList pPllName_ =
  ProjectsLocationsList'
    { _pllXgafv = Nothing
    , _pllUploadProtocol = Nothing
    , _pllAccessToken = Nothing
    , _pllUploadType = Nothing
    , _pllName = pPllName_
    , _pllFilter = Nothing
    , _pllPageToken = Nothing
    , _pllPageSize = Nothing
    , _pllCallback = Nothing
    }


-- | V1 error format.
pllXgafv :: Lens' ProjectsLocationsList (Maybe Xgafv)
pllXgafv = lens _pllXgafv (\ s a -> s{_pllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pllUploadProtocol :: Lens' ProjectsLocationsList (Maybe Text)
pllUploadProtocol
  = lens _pllUploadProtocol
      (\ s a -> s{_pllUploadProtocol = a})

-- | OAuth access token.
pllAccessToken :: Lens' ProjectsLocationsList (Maybe Text)
pllAccessToken
  = lens _pllAccessToken
      (\ s a -> s{_pllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pllUploadType :: Lens' ProjectsLocationsList (Maybe Text)
pllUploadType
  = lens _pllUploadType
      (\ s a -> s{_pllUploadType = a})

-- | The resource that owns the locations collection, if applicable.
pllName :: Lens' ProjectsLocationsList Text
pllName = lens _pllName (\ s a -> s{_pllName = a})

-- | A filter to narrow down results to a preferred subset. The filtering
-- language accepts strings like \"displayName=tokyo\", and is documented
-- in more detail in [AIP-160](https:\/\/google.aip.dev\/160).
pllFilter :: Lens' ProjectsLocationsList (Maybe Text)
pllFilter
  = lens _pllFilter (\ s a -> s{_pllFilter = a})

-- | A page token received from the \`next_page_token\` field in the
-- response. Send that page token to receive the subsequent page.
pllPageToken :: Lens' ProjectsLocationsList (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

-- | The maximum number of results to return. If not set, the service selects
-- a default.
pllPageSize :: Lens' ProjectsLocationsList (Maybe Int32)
pllPageSize
  = lens _pllPageSize (\ s a -> s{_pllPageSize = a}) .
      mapping _Coerce

-- | JSONP
pllCallback :: Lens' ProjectsLocationsList (Maybe Text)
pllCallback
  = lens _pllCallback (\ s a -> s{_pllCallback = a})

instance GoogleRequest ProjectsLocationsList where
        type Rs ProjectsLocationsList = ListLocationsResponse
        type Scopes ProjectsLocationsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsList'{..}
          = go _pllName _pllXgafv _pllUploadProtocol
              _pllAccessToken
              _pllUploadType
              _pllFilter
              _pllPageToken
              _pllPageSize
              _pllCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsListResource)
                      mempty
