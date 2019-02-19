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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists notes for the specified project.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.list@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.List
    (
    -- * REST Resource
      ProjectsNotesListResource

    -- * Creating a Request
    , projectsNotesList
    , ProjectsNotesList

    -- * Request Lenses
    , pnlParent
    , pnlXgafv
    , pnlUploadProtocol
    , pnlAccessToken
    , pnlUploadType
    , pnlFilter
    , pnlPageToken
    , pnlPageSize
    , pnlCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.list@ method which the
-- 'ProjectsNotesList' request conforms to.
type ProjectsNotesListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "notes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListNotesResponse

-- | Lists notes for the specified project.
--
-- /See:/ 'projectsNotesList' smart constructor.
data ProjectsNotesList =
  ProjectsNotesList'
    { _pnlParent         :: !Text
    , _pnlXgafv          :: !(Maybe Xgafv)
    , _pnlUploadProtocol :: !(Maybe Text)
    , _pnlAccessToken    :: !(Maybe Text)
    , _pnlUploadType     :: !(Maybe Text)
    , _pnlFilter         :: !(Maybe Text)
    , _pnlPageToken      :: !(Maybe Text)
    , _pnlPageSize       :: !(Maybe (Textual Int32))
    , _pnlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsNotesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnlParent'
--
-- * 'pnlXgafv'
--
-- * 'pnlUploadProtocol'
--
-- * 'pnlAccessToken'
--
-- * 'pnlUploadType'
--
-- * 'pnlFilter'
--
-- * 'pnlPageToken'
--
-- * 'pnlPageSize'
--
-- * 'pnlCallback'
projectsNotesList
    :: Text -- ^ 'pnlParent'
    -> ProjectsNotesList
projectsNotesList pPnlParent_ =
  ProjectsNotesList'
    { _pnlParent = pPnlParent_
    , _pnlXgafv = Nothing
    , _pnlUploadProtocol = Nothing
    , _pnlAccessToken = Nothing
    , _pnlUploadType = Nothing
    , _pnlFilter = Nothing
    , _pnlPageToken = Nothing
    , _pnlPageSize = Nothing
    , _pnlCallback = Nothing
    }

-- | The name of the project to list notes for in the form of
-- \`projects\/[PROJECT_ID]\`.
pnlParent :: Lens' ProjectsNotesList Text
pnlParent
  = lens _pnlParent (\ s a -> s{_pnlParent = a})

-- | V1 error format.
pnlXgafv :: Lens' ProjectsNotesList (Maybe Xgafv)
pnlXgafv = lens _pnlXgafv (\ s a -> s{_pnlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pnlUploadProtocol :: Lens' ProjectsNotesList (Maybe Text)
pnlUploadProtocol
  = lens _pnlUploadProtocol
      (\ s a -> s{_pnlUploadProtocol = a})

-- | OAuth access token.
pnlAccessToken :: Lens' ProjectsNotesList (Maybe Text)
pnlAccessToken
  = lens _pnlAccessToken
      (\ s a -> s{_pnlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pnlUploadType :: Lens' ProjectsNotesList (Maybe Text)
pnlUploadType
  = lens _pnlUploadType
      (\ s a -> s{_pnlUploadType = a})

-- | The filter expression.
pnlFilter :: Lens' ProjectsNotesList (Maybe Text)
pnlFilter
  = lens _pnlFilter (\ s a -> s{_pnlFilter = a})

-- | Token to provide to skip to a particular spot in the list.
pnlPageToken :: Lens' ProjectsNotesList (Maybe Text)
pnlPageToken
  = lens _pnlPageToken (\ s a -> s{_pnlPageToken = a})

-- | Number of notes to return in the list. Must be positive. Max allowed
-- page size is 1000. If not specified, page size defaults to 20.
pnlPageSize :: Lens' ProjectsNotesList (Maybe Int32)
pnlPageSize
  = lens _pnlPageSize (\ s a -> s{_pnlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pnlCallback :: Lens' ProjectsNotesList (Maybe Text)
pnlCallback
  = lens _pnlCallback (\ s a -> s{_pnlCallback = a})

instance GoogleRequest ProjectsNotesList where
        type Rs ProjectsNotesList = ListNotesResponse
        type Scopes ProjectsNotesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesList'{..}
          = go _pnlParent _pnlXgafv _pnlUploadProtocol
              _pnlAccessToken
              _pnlUploadType
              _pnlFilter
              _pnlPageToken
              _pnlPageSize
              _pnlCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesListResource)
                      mempty
