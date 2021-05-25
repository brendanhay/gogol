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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Revisions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List revisions.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.revisions.list@.
module Network.Google.Resource.Run.Projects.Locations.Revisions.List
    (
    -- * REST Resource
      ProjectsLocationsRevisionsListResource

    -- * Creating a Request
    , projectsLocationsRevisionsList
    , ProjectsLocationsRevisionsList

    -- * Request Lenses
    , pParent
    , pXgafv
    , pFieldSelector
    , pUploadProtocol
    , pAccessToken
    , pResourceVersion
    , pLabelSelector
    , pUploadType
    , pLimit
    , pIncludeUninitialized
    , pContinue
    , pWatch
    , pCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.revisions.list@ method which the
-- 'ProjectsLocationsRevisionsList' request conforms to.
type ProjectsLocationsRevisionsListResource =
     "v1" :>
       Capture "parent" Text :>
         "revisions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "fieldSelector" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "resourceVersion" Text :>
                     QueryParam "labelSelector" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "limit" (Textual Int32) :>
                           QueryParam "includeUninitialized" Bool :>
                             QueryParam "continue" Text :>
                               QueryParam "watch" Bool :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListRevisionsResponse

-- | List revisions.
--
-- /See:/ 'projectsLocationsRevisionsList' smart constructor.
data ProjectsLocationsRevisionsList =
  ProjectsLocationsRevisionsList'
    { _pParent :: !Text
    , _pXgafv :: !(Maybe Xgafv)
    , _pFieldSelector :: !(Maybe Text)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pResourceVersion :: !(Maybe Text)
    , _pLabelSelector :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pLimit :: !(Maybe (Textual Int32))
    , _pIncludeUninitialized :: !(Maybe Bool)
    , _pContinue :: !(Maybe Text)
    , _pWatch :: !(Maybe Bool)
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRevisionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pXgafv'
--
-- * 'pFieldSelector'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pResourceVersion'
--
-- * 'pLabelSelector'
--
-- * 'pUploadType'
--
-- * 'pLimit'
--
-- * 'pIncludeUninitialized'
--
-- * 'pContinue'
--
-- * 'pWatch'
--
-- * 'pCallback'
projectsLocationsRevisionsList
    :: Text -- ^ 'pParent'
    -> ProjectsLocationsRevisionsList
projectsLocationsRevisionsList pPParent_ =
  ProjectsLocationsRevisionsList'
    { _pParent = pPParent_
    , _pXgafv = Nothing
    , _pFieldSelector = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pResourceVersion = Nothing
    , _pLabelSelector = Nothing
    , _pUploadType = Nothing
    , _pLimit = Nothing
    , _pIncludeUninitialized = Nothing
    , _pContinue = Nothing
    , _pWatch = Nothing
    , _pCallback = Nothing
    }


-- | The namespace from which the revisions should be listed. For Cloud Run
-- (fully managed), replace {namespace_id} with the project ID or number.
pParent :: Lens' ProjectsLocationsRevisionsList Text
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | V1 error format.
pXgafv :: Lens' ProjectsLocationsRevisionsList (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Allows to filter resources based on a specific value for a field name.
-- Send this in a query string format. i.e. \'metadata.name%3Dlorem\'. Not
-- currently used by Cloud Run.
pFieldSelector :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pFieldSelector
  = lens _pFieldSelector
      (\ s a -> s{_pFieldSelector = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | The baseline resource version from which the list or watch operation
-- should start. Not currently used by Cloud Run.
pResourceVersion :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pResourceVersion
  = lens _pResourceVersion
      (\ s a -> s{_pResourceVersion = a})

-- | Allows to filter resources based on a label. Supported operations are =,
-- !=, exists, in, and notIn.
pLabelSelector :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pLabelSelector
  = lens _pLabelSelector
      (\ s a -> s{_pLabelSelector = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Optional. The maximum number of records that should be returned.
pLimit :: Lens' ProjectsLocationsRevisionsList (Maybe Int32)
pLimit
  = lens _pLimit (\ s a -> s{_pLimit = a}) .
      mapping _Coerce

-- | Not currently used by Cloud Run.
pIncludeUninitialized :: Lens' ProjectsLocationsRevisionsList (Maybe Bool)
pIncludeUninitialized
  = lens _pIncludeUninitialized
      (\ s a -> s{_pIncludeUninitialized = a})

-- | Optional. Encoded string to continue paging.
pContinue :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pContinue
  = lens _pContinue (\ s a -> s{_pContinue = a})

-- | Flag that indicates that the client expects to watch this resource as
-- well. Not currently used by Cloud Run.
pWatch :: Lens' ProjectsLocationsRevisionsList (Maybe Bool)
pWatch = lens _pWatch (\ s a -> s{_pWatch = a})

-- | JSONP
pCallback :: Lens' ProjectsLocationsRevisionsList (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsLocationsRevisionsList
         where
        type Rs ProjectsLocationsRevisionsList =
             ListRevisionsResponse
        type Scopes ProjectsLocationsRevisionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsRevisionsList'{..}
          = go _pParent _pXgafv _pFieldSelector
              _pUploadProtocol
              _pAccessToken
              _pResourceVersion
              _pLabelSelector
              _pUploadType
              _pLimit
              _pIncludeUninitialized
              _pContinue
              _pWatch
              _pCallback
              (Just AltJSON)
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsRevisionsListResource)
                      mempty
