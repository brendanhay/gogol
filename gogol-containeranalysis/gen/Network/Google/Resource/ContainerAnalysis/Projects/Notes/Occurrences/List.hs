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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.Occurrences.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists occurrences referencing the specified note. Provider projects can
-- use this method to get all occurrences across consumer projects
-- referencing the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.occurrences.list@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Occurrences.List
    (
    -- * REST Resource
      ProjectsNotesOccurrencesListResource

    -- * Creating a Request
    , projectsNotesOccurrencesList
    , ProjectsNotesOccurrencesList

    -- * Request Lenses
    , pnolXgafv
    , pnolUploadProtocol
    , pnolAccessToken
    , pnolUploadType
    , pnolName
    , pnolFilter
    , pnolPageToken
    , pnolPageSize
    , pnolCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.occurrences.list@ method which the
-- 'ProjectsNotesOccurrencesList' request conforms to.
type ProjectsNotesOccurrencesListResource =
     "v1beta1" :>
       Capture "name" Text :>
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
                             Get '[JSON] ListNoteOccurrencesResponse

-- | Lists occurrences referencing the specified note. Provider projects can
-- use this method to get all occurrences across consumer projects
-- referencing the specified note.
--
-- /See:/ 'projectsNotesOccurrencesList' smart constructor.
data ProjectsNotesOccurrencesList =
  ProjectsNotesOccurrencesList'
    { _pnolXgafv          :: !(Maybe Xgafv)
    , _pnolUploadProtocol :: !(Maybe Text)
    , _pnolAccessToken    :: !(Maybe Text)
    , _pnolUploadType     :: !(Maybe Text)
    , _pnolName           :: !Text
    , _pnolFilter         :: !(Maybe Text)
    , _pnolPageToken      :: !(Maybe Text)
    , _pnolPageSize       :: !(Maybe (Textual Int32))
    , _pnolCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsNotesOccurrencesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnolXgafv'
--
-- * 'pnolUploadProtocol'
--
-- * 'pnolAccessToken'
--
-- * 'pnolUploadType'
--
-- * 'pnolName'
--
-- * 'pnolFilter'
--
-- * 'pnolPageToken'
--
-- * 'pnolPageSize'
--
-- * 'pnolCallback'
projectsNotesOccurrencesList
    :: Text -- ^ 'pnolName'
    -> ProjectsNotesOccurrencesList
projectsNotesOccurrencesList pPnolName_ =
  ProjectsNotesOccurrencesList'
    { _pnolXgafv = Nothing
    , _pnolUploadProtocol = Nothing
    , _pnolAccessToken = Nothing
    , _pnolUploadType = Nothing
    , _pnolName = pPnolName_
    , _pnolFilter = Nothing
    , _pnolPageToken = Nothing
    , _pnolPageSize = Nothing
    , _pnolCallback = Nothing
    }

-- | V1 error format.
pnolXgafv :: Lens' ProjectsNotesOccurrencesList (Maybe Xgafv)
pnolXgafv
  = lens _pnolXgafv (\ s a -> s{_pnolXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pnolUploadProtocol :: Lens' ProjectsNotesOccurrencesList (Maybe Text)
pnolUploadProtocol
  = lens _pnolUploadProtocol
      (\ s a -> s{_pnolUploadProtocol = a})

-- | OAuth access token.
pnolAccessToken :: Lens' ProjectsNotesOccurrencesList (Maybe Text)
pnolAccessToken
  = lens _pnolAccessToken
      (\ s a -> s{_pnolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pnolUploadType :: Lens' ProjectsNotesOccurrencesList (Maybe Text)
pnolUploadType
  = lens _pnolUploadType
      (\ s a -> s{_pnolUploadType = a})

-- | The name of the note to list occurrences for in the form of
-- \`projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]\`.
pnolName :: Lens' ProjectsNotesOccurrencesList Text
pnolName = lens _pnolName (\ s a -> s{_pnolName = a})

-- | The filter expression.
pnolFilter :: Lens' ProjectsNotesOccurrencesList (Maybe Text)
pnolFilter
  = lens _pnolFilter (\ s a -> s{_pnolFilter = a})

-- | Token to provide to skip to a particular spot in the list.
pnolPageToken :: Lens' ProjectsNotesOccurrencesList (Maybe Text)
pnolPageToken
  = lens _pnolPageToken
      (\ s a -> s{_pnolPageToken = a})

-- | Number of occurrences to return in the list.
pnolPageSize :: Lens' ProjectsNotesOccurrencesList (Maybe Int32)
pnolPageSize
  = lens _pnolPageSize (\ s a -> s{_pnolPageSize = a})
      . mapping _Coerce

-- | JSONP
pnolCallback :: Lens' ProjectsNotesOccurrencesList (Maybe Text)
pnolCallback
  = lens _pnolCallback (\ s a -> s{_pnolCallback = a})

instance GoogleRequest ProjectsNotesOccurrencesList
         where
        type Rs ProjectsNotesOccurrencesList =
             ListNoteOccurrencesResponse
        type Scopes ProjectsNotesOccurrencesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesOccurrencesList'{..}
          = go _pnolName _pnolXgafv _pnolUploadProtocol
              _pnolAccessToken
              _pnolUploadType
              _pnolFilter
              _pnolPageToken
              _pnolPageSize
              _pnolCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesOccurrencesListResource)
                      mempty
