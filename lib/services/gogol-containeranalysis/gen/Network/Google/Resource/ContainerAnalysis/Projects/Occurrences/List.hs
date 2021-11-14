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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists occurrences for the specified project.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.list@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.List
    (
    -- * REST Resource
      ProjectsOccurrencesListResource

    -- * Creating a Request
    , projectsOccurrencesList
    , ProjectsOccurrencesList

    -- * Request Lenses
    , polParent
    , polXgafv
    , polUploadProtocol
    , polAccessToken
    , polUploadType
    , polFilter
    , polPageToken
    , polPageSize
    , polCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.list@ method which the
-- 'ProjectsOccurrencesList' request conforms to.
type ProjectsOccurrencesListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "occurrences" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListOccurrencesResponse

-- | Lists occurrences for the specified project.
--
-- /See:/ 'projectsOccurrencesList' smart constructor.
data ProjectsOccurrencesList =
  ProjectsOccurrencesList'
    { _polParent :: !Text
    , _polXgafv :: !(Maybe Xgafv)
    , _polUploadProtocol :: !(Maybe Text)
    , _polAccessToken :: !(Maybe Text)
    , _polUploadType :: !(Maybe Text)
    , _polFilter :: !(Maybe Text)
    , _polPageToken :: !(Maybe Text)
    , _polPageSize :: !(Maybe (Textual Int32))
    , _polCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polParent'
--
-- * 'polXgafv'
--
-- * 'polUploadProtocol'
--
-- * 'polAccessToken'
--
-- * 'polUploadType'
--
-- * 'polFilter'
--
-- * 'polPageToken'
--
-- * 'polPageSize'
--
-- * 'polCallback'
projectsOccurrencesList
    :: Text -- ^ 'polParent'
    -> ProjectsOccurrencesList
projectsOccurrencesList pPolParent_ =
  ProjectsOccurrencesList'
    { _polParent = pPolParent_
    , _polXgafv = Nothing
    , _polUploadProtocol = Nothing
    , _polAccessToken = Nothing
    , _polUploadType = Nothing
    , _polFilter = Nothing
    , _polPageToken = Nothing
    , _polPageSize = Nothing
    , _polCallback = Nothing
    }


-- | Required. The name of the project to list occurrences for in the form of
-- \`projects\/[PROJECT_ID]\`.
polParent :: Lens' ProjectsOccurrencesList Text
polParent
  = lens _polParent (\ s a -> s{_polParent = a})

-- | V1 error format.
polXgafv :: Lens' ProjectsOccurrencesList (Maybe Xgafv)
polXgafv = lens _polXgafv (\ s a -> s{_polXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
polUploadProtocol :: Lens' ProjectsOccurrencesList (Maybe Text)
polUploadProtocol
  = lens _polUploadProtocol
      (\ s a -> s{_polUploadProtocol = a})

-- | OAuth access token.
polAccessToken :: Lens' ProjectsOccurrencesList (Maybe Text)
polAccessToken
  = lens _polAccessToken
      (\ s a -> s{_polAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
polUploadType :: Lens' ProjectsOccurrencesList (Maybe Text)
polUploadType
  = lens _polUploadType
      (\ s a -> s{_polUploadType = a})

-- | The filter expression.
polFilter :: Lens' ProjectsOccurrencesList (Maybe Text)
polFilter
  = lens _polFilter (\ s a -> s{_polFilter = a})

-- | Token to provide to skip to a particular spot in the list.
polPageToken :: Lens' ProjectsOccurrencesList (Maybe Text)
polPageToken
  = lens _polPageToken (\ s a -> s{_polPageToken = a})

-- | Number of occurrences to return in the list. Must be positive. Max
-- allowed page size is 1000. If not specified, page size defaults to 20.
polPageSize :: Lens' ProjectsOccurrencesList (Maybe Int32)
polPageSize
  = lens _polPageSize (\ s a -> s{_polPageSize = a}) .
      mapping _Coerce

-- | JSONP
polCallback :: Lens' ProjectsOccurrencesList (Maybe Text)
polCallback
  = lens _polCallback (\ s a -> s{_polCallback = a})

instance GoogleRequest ProjectsOccurrencesList where
        type Rs ProjectsOccurrencesList =
             ListOccurrencesResponse
        type Scopes ProjectsOccurrencesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesList'{..}
          = go _polParent _polXgafv _polUploadProtocol
              _polAccessToken
              _polUploadType
              _polFilter
              _polPageToken
              _polPageSize
              _polCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOccurrencesListResource)
                      mempty
