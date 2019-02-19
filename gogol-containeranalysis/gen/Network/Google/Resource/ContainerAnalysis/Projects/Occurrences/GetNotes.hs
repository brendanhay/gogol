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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetNotes
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the note attached to the specified occurrence. Consumer projects
-- can use this method to get a note that belongs to a provider project.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.occurrences.getNotes@.
module Network.Google.Resource.ContainerAnalysis.Projects.Occurrences.GetNotes
    (
    -- * REST Resource
      ProjectsOccurrencesGetNotesResource

    -- * Creating a Request
    , projectsOccurrencesGetNotes
    , ProjectsOccurrencesGetNotes

    -- * Request Lenses
    , pognXgafv
    , pognUploadProtocol
    , pognAccessToken
    , pognUploadType
    , pognName
    , pognCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.occurrences.getNotes@ method which the
-- 'ProjectsOccurrencesGetNotes' request conforms to.
type ProjectsOccurrencesGetNotesResource =
     "v1beta1" :>
       Capture "name" Text :>
         "notes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Note

-- | Gets the note attached to the specified occurrence. Consumer projects
-- can use this method to get a note that belongs to a provider project.
--
-- /See:/ 'projectsOccurrencesGetNotes' smart constructor.
data ProjectsOccurrencesGetNotes =
  ProjectsOccurrencesGetNotes'
    { _pognXgafv          :: !(Maybe Xgafv)
    , _pognUploadProtocol :: !(Maybe Text)
    , _pognAccessToken    :: !(Maybe Text)
    , _pognUploadType     :: !(Maybe Text)
    , _pognName           :: !Text
    , _pognCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsOccurrencesGetNotes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pognXgafv'
--
-- * 'pognUploadProtocol'
--
-- * 'pognAccessToken'
--
-- * 'pognUploadType'
--
-- * 'pognName'
--
-- * 'pognCallback'
projectsOccurrencesGetNotes
    :: Text -- ^ 'pognName'
    -> ProjectsOccurrencesGetNotes
projectsOccurrencesGetNotes pPognName_ =
  ProjectsOccurrencesGetNotes'
    { _pognXgafv = Nothing
    , _pognUploadProtocol = Nothing
    , _pognAccessToken = Nothing
    , _pognUploadType = Nothing
    , _pognName = pPognName_
    , _pognCallback = Nothing
    }


-- | V1 error format.
pognXgafv :: Lens' ProjectsOccurrencesGetNotes (Maybe Xgafv)
pognXgafv
  = lens _pognXgafv (\ s a -> s{_pognXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pognUploadProtocol :: Lens' ProjectsOccurrencesGetNotes (Maybe Text)
pognUploadProtocol
  = lens _pognUploadProtocol
      (\ s a -> s{_pognUploadProtocol = a})

-- | OAuth access token.
pognAccessToken :: Lens' ProjectsOccurrencesGetNotes (Maybe Text)
pognAccessToken
  = lens _pognAccessToken
      (\ s a -> s{_pognAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pognUploadType :: Lens' ProjectsOccurrencesGetNotes (Maybe Text)
pognUploadType
  = lens _pognUploadType
      (\ s a -> s{_pognUploadType = a})

-- | The name of the occurrence in the form of
-- \`projects\/[PROJECT_ID]\/occurrences\/[OCCURRENCE_ID]\`.
pognName :: Lens' ProjectsOccurrencesGetNotes Text
pognName = lens _pognName (\ s a -> s{_pognName = a})

-- | JSONP
pognCallback :: Lens' ProjectsOccurrencesGetNotes (Maybe Text)
pognCallback
  = lens _pognCallback (\ s a -> s{_pognCallback = a})

instance GoogleRequest ProjectsOccurrencesGetNotes
         where
        type Rs ProjectsOccurrencesGetNotes = Note
        type Scopes ProjectsOccurrencesGetNotes =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsOccurrencesGetNotes'{..}
          = go _pognName _pognXgafv _pognUploadProtocol
              _pognAccessToken
              _pognUploadType
              _pognCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsOccurrencesGetNotesResource)
                      mempty
