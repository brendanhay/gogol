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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.BatchCreate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new notes in batch.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.batchCreate@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.BatchCreate
    (
    -- * REST Resource
      ProjectsNotesBatchCreateResource

    -- * Creating a Request
    , projectsNotesBatchCreate
    , ProjectsNotesBatchCreate

    -- * Request Lenses
    , pnbcParent
    , pnbcXgafv
    , pnbcUploadProtocol
    , pnbcAccessToken
    , pnbcUploadType
    , pnbcPayload
    , pnbcCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.batchCreate@ method which the
-- 'ProjectsNotesBatchCreate' request conforms to.
type ProjectsNotesBatchCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "notes:batchCreate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchCreateNotesRequest :>
                         Post '[JSON] BatchCreateNotesResponse

-- | Creates new notes in batch.
--
-- /See:/ 'projectsNotesBatchCreate' smart constructor.
data ProjectsNotesBatchCreate =
  ProjectsNotesBatchCreate'
    { _pnbcParent         :: !Text
    , _pnbcXgafv          :: !(Maybe Xgafv)
    , _pnbcUploadProtocol :: !(Maybe Text)
    , _pnbcAccessToken    :: !(Maybe Text)
    , _pnbcUploadType     :: !(Maybe Text)
    , _pnbcPayload        :: !BatchCreateNotesRequest
    , _pnbcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotesBatchCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnbcParent'
--
-- * 'pnbcXgafv'
--
-- * 'pnbcUploadProtocol'
--
-- * 'pnbcAccessToken'
--
-- * 'pnbcUploadType'
--
-- * 'pnbcPayload'
--
-- * 'pnbcCallback'
projectsNotesBatchCreate
    :: Text -- ^ 'pnbcParent'
    -> BatchCreateNotesRequest -- ^ 'pnbcPayload'
    -> ProjectsNotesBatchCreate
projectsNotesBatchCreate pPnbcParent_ pPnbcPayload_ =
  ProjectsNotesBatchCreate'
    { _pnbcParent = pPnbcParent_
    , _pnbcXgafv = Nothing
    , _pnbcUploadProtocol = Nothing
    , _pnbcAccessToken = Nothing
    , _pnbcUploadType = Nothing
    , _pnbcPayload = pPnbcPayload_
    , _pnbcCallback = Nothing
    }


-- | The name of the project in the form of \`projects\/[PROJECT_ID]\`, under
-- which the notes are to be created.
pnbcParent :: Lens' ProjectsNotesBatchCreate Text
pnbcParent
  = lens _pnbcParent (\ s a -> s{_pnbcParent = a})

-- | V1 error format.
pnbcXgafv :: Lens' ProjectsNotesBatchCreate (Maybe Xgafv)
pnbcXgafv
  = lens _pnbcXgafv (\ s a -> s{_pnbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pnbcUploadProtocol :: Lens' ProjectsNotesBatchCreate (Maybe Text)
pnbcUploadProtocol
  = lens _pnbcUploadProtocol
      (\ s a -> s{_pnbcUploadProtocol = a})

-- | OAuth access token.
pnbcAccessToken :: Lens' ProjectsNotesBatchCreate (Maybe Text)
pnbcAccessToken
  = lens _pnbcAccessToken
      (\ s a -> s{_pnbcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pnbcUploadType :: Lens' ProjectsNotesBatchCreate (Maybe Text)
pnbcUploadType
  = lens _pnbcUploadType
      (\ s a -> s{_pnbcUploadType = a})

-- | Multipart request metadata.
pnbcPayload :: Lens' ProjectsNotesBatchCreate BatchCreateNotesRequest
pnbcPayload
  = lens _pnbcPayload (\ s a -> s{_pnbcPayload = a})

-- | JSONP
pnbcCallback :: Lens' ProjectsNotesBatchCreate (Maybe Text)
pnbcCallback
  = lens _pnbcCallback (\ s a -> s{_pnbcCallback = a})

instance GoogleRequest ProjectsNotesBatchCreate where
        type Rs ProjectsNotesBatchCreate =
             BatchCreateNotesResponse
        type Scopes ProjectsNotesBatchCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesBatchCreate'{..}
          = go _pnbcParent _pnbcXgafv _pnbcUploadProtocol
              _pnbcAccessToken
              _pnbcUploadType
              _pnbcCallback
              (Just AltJSON)
              _pnbcPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesBatchCreateResource)
                      mempty
