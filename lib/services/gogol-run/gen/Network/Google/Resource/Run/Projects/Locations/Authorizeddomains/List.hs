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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Authorizeddomains.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List authorized domains.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.authorizeddomains.list@.
module Network.Google.Resource.Run.Projects.Locations.Authorizeddomains.List
    (
    -- * REST Resource
      ProjectsLocationsAuthorizeddomainsListResource

    -- * Creating a Request
    , projectsLocationsAuthorizeddomainsList
    , ProjectsLocationsAuthorizeddomainsList

    -- * Request Lenses
    , plalParent
    , plalXgafv
    , plalUploadProtocol
    , plalAccessToken
    , plalUploadType
    , plalPageToken
    , plalPageSize
    , plalCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.authorizeddomains.list@ method which the
-- 'ProjectsLocationsAuthorizeddomainsList' request conforms to.
type ProjectsLocationsAuthorizeddomainsListResource =
     "v1" :>
       Capture "parent" Text :>
         "authorizeddomains" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAuthorizedDomainsResponse

-- | List authorized domains.
--
-- /See:/ 'projectsLocationsAuthorizeddomainsList' smart constructor.
data ProjectsLocationsAuthorizeddomainsList =
  ProjectsLocationsAuthorizeddomainsList'
    { _plalParent :: !Text
    , _plalXgafv :: !(Maybe Xgafv)
    , _plalUploadProtocol :: !(Maybe Text)
    , _plalAccessToken :: !(Maybe Text)
    , _plalUploadType :: !(Maybe Text)
    , _plalPageToken :: !(Maybe Text)
    , _plalPageSize :: !(Maybe (Textual Int32))
    , _plalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAuthorizeddomainsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plalParent'
--
-- * 'plalXgafv'
--
-- * 'plalUploadProtocol'
--
-- * 'plalAccessToken'
--
-- * 'plalUploadType'
--
-- * 'plalPageToken'
--
-- * 'plalPageSize'
--
-- * 'plalCallback'
projectsLocationsAuthorizeddomainsList
    :: Text -- ^ 'plalParent'
    -> ProjectsLocationsAuthorizeddomainsList
projectsLocationsAuthorizeddomainsList pPlalParent_ =
  ProjectsLocationsAuthorizeddomainsList'
    { _plalParent = pPlalParent_
    , _plalXgafv = Nothing
    , _plalUploadProtocol = Nothing
    , _plalAccessToken = Nothing
    , _plalUploadType = Nothing
    , _plalPageToken = Nothing
    , _plalPageSize = Nothing
    , _plalCallback = Nothing
    }


-- | Name of the parent Project resource. Example: \`projects\/myproject\`.
plalParent :: Lens' ProjectsLocationsAuthorizeddomainsList Text
plalParent
  = lens _plalParent (\ s a -> s{_plalParent = a})

-- | V1 error format.
plalXgafv :: Lens' ProjectsLocationsAuthorizeddomainsList (Maybe Xgafv)
plalXgafv
  = lens _plalXgafv (\ s a -> s{_plalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plalUploadProtocol :: Lens' ProjectsLocationsAuthorizeddomainsList (Maybe Text)
plalUploadProtocol
  = lens _plalUploadProtocol
      (\ s a -> s{_plalUploadProtocol = a})

-- | OAuth access token.
plalAccessToken :: Lens' ProjectsLocationsAuthorizeddomainsList (Maybe Text)
plalAccessToken
  = lens _plalAccessToken
      (\ s a -> s{_plalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plalUploadType :: Lens' ProjectsLocationsAuthorizeddomainsList (Maybe Text)
plalUploadType
  = lens _plalUploadType
      (\ s a -> s{_plalUploadType = a})

-- | Continuation token for fetching the next page of results.
plalPageToken :: Lens' ProjectsLocationsAuthorizeddomainsList (Maybe Text)
plalPageToken
  = lens _plalPageToken
      (\ s a -> s{_plalPageToken = a})

-- | Maximum results to return per page.
plalPageSize :: Lens' ProjectsLocationsAuthorizeddomainsList (Maybe Int32)
plalPageSize
  = lens _plalPageSize (\ s a -> s{_plalPageSize = a})
      . mapping _Coerce

-- | JSONP
plalCallback :: Lens' ProjectsLocationsAuthorizeddomainsList (Maybe Text)
plalCallback
  = lens _plalCallback (\ s a -> s{_plalCallback = a})

instance GoogleRequest
           ProjectsLocationsAuthorizeddomainsList
         where
        type Rs ProjectsLocationsAuthorizeddomainsList =
             ListAuthorizedDomainsResponse
        type Scopes ProjectsLocationsAuthorizeddomainsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAuthorizeddomainsList'{..}
          = go _plalParent _plalXgafv _plalUploadProtocol
              _plalAccessToken
              _plalUploadType
              _plalPageToken
              _plalPageSize
              _plalCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAuthorizeddomainsListResource)
                      mempty
