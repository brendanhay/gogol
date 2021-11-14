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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.create@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Create
    (
    -- * REST Resource
      ProjectsNotesCreateResource

    -- * Creating a Request
    , projectsNotesCreate
    , ProjectsNotesCreate

    -- * Request Lenses
    , pncParent
    , pncXgafv
    , pncUploadProtocol
    , pncAccessToken
    , pncUploadType
    , pncPayload
    , pncNoteId
    , pncCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.create@ method which the
-- 'ProjectsNotesCreate' request conforms to.
type ProjectsNotesCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "notes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "noteId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Note :> Post '[JSON] Note

-- | Creates a new note.
--
-- /See:/ 'projectsNotesCreate' smart constructor.
data ProjectsNotesCreate =
  ProjectsNotesCreate'
    { _pncParent :: !Text
    , _pncXgafv :: !(Maybe Xgafv)
    , _pncUploadProtocol :: !(Maybe Text)
    , _pncAccessToken :: !(Maybe Text)
    , _pncUploadType :: !(Maybe Text)
    , _pncPayload :: !Note
    , _pncNoteId :: !(Maybe Text)
    , _pncCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncParent'
--
-- * 'pncXgafv'
--
-- * 'pncUploadProtocol'
--
-- * 'pncAccessToken'
--
-- * 'pncUploadType'
--
-- * 'pncPayload'
--
-- * 'pncNoteId'
--
-- * 'pncCallback'
projectsNotesCreate
    :: Text -- ^ 'pncParent'
    -> Note -- ^ 'pncPayload'
    -> ProjectsNotesCreate
projectsNotesCreate pPncParent_ pPncPayload_ =
  ProjectsNotesCreate'
    { _pncParent = pPncParent_
    , _pncXgafv = Nothing
    , _pncUploadProtocol = Nothing
    , _pncAccessToken = Nothing
    , _pncUploadType = Nothing
    , _pncPayload = pPncPayload_
    , _pncNoteId = Nothing
    , _pncCallback = Nothing
    }


-- | Required. The name of the project in the form of
-- \`projects\/[PROJECT_ID]\`, under which the note is to be created.
pncParent :: Lens' ProjectsNotesCreate Text
pncParent
  = lens _pncParent (\ s a -> s{_pncParent = a})

-- | V1 error format.
pncXgafv :: Lens' ProjectsNotesCreate (Maybe Xgafv)
pncXgafv = lens _pncXgafv (\ s a -> s{_pncXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncUploadProtocol :: Lens' ProjectsNotesCreate (Maybe Text)
pncUploadProtocol
  = lens _pncUploadProtocol
      (\ s a -> s{_pncUploadProtocol = a})

-- | OAuth access token.
pncAccessToken :: Lens' ProjectsNotesCreate (Maybe Text)
pncAccessToken
  = lens _pncAccessToken
      (\ s a -> s{_pncAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncUploadType :: Lens' ProjectsNotesCreate (Maybe Text)
pncUploadType
  = lens _pncUploadType
      (\ s a -> s{_pncUploadType = a})

-- | Multipart request metadata.
pncPayload :: Lens' ProjectsNotesCreate Note
pncPayload
  = lens _pncPayload (\ s a -> s{_pncPayload = a})

-- | Required. The ID to use for this note.
pncNoteId :: Lens' ProjectsNotesCreate (Maybe Text)
pncNoteId
  = lens _pncNoteId (\ s a -> s{_pncNoteId = a})

-- | JSONP
pncCallback :: Lens' ProjectsNotesCreate (Maybe Text)
pncCallback
  = lens _pncCallback (\ s a -> s{_pncCallback = a})

instance GoogleRequest ProjectsNotesCreate where
        type Rs ProjectsNotesCreate = Note
        type Scopes ProjectsNotesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesCreate'{..}
          = go _pncParent _pncXgafv _pncUploadProtocol
              _pncAccessToken
              _pncUploadType
              _pncNoteId
              _pncCallback
              (Just AltJSON)
              _pncPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesCreateResource)
                      mempty
