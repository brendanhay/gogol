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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.get@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Get
    (
    -- * REST Resource
      ProjectsNotesGetResource

    -- * Creating a Request
    , projectsNotesGet
    , ProjectsNotesGet

    -- * Request Lenses
    , pngXgafv
    , pngUploadProtocol
    , pngAccessToken
    , pngUploadType
    , pngName
    , pngCallback
    ) where

import           Network.Google.ContainerAnalysis.Types
import           Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.get@ method which the
-- 'ProjectsNotesGet' request conforms to.
type ProjectsNotesGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Note

-- | Gets the specified note.
--
-- /See:/ 'projectsNotesGet' smart constructor.
data ProjectsNotesGet = ProjectsNotesGet'
    { _pngXgafv          :: !(Maybe Xgafv)
    , _pngUploadProtocol :: !(Maybe Text)
    , _pngAccessToken    :: !(Maybe Text)
    , _pngUploadType     :: !(Maybe Text)
    , _pngName           :: !Text
    , _pngCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsNotesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pngXgafv'
--
-- * 'pngUploadProtocol'
--
-- * 'pngAccessToken'
--
-- * 'pngUploadType'
--
-- * 'pngName'
--
-- * 'pngCallback'
projectsNotesGet
    :: Text -- ^ 'pngName'
    -> ProjectsNotesGet
projectsNotesGet pPngName_ =
    ProjectsNotesGet'
    { _pngXgafv = Nothing
    , _pngUploadProtocol = Nothing
    , _pngAccessToken = Nothing
    , _pngUploadType = Nothing
    , _pngName = pPngName_
    , _pngCallback = Nothing
    }

-- | V1 error format.
pngXgafv :: Lens' ProjectsNotesGet (Maybe Xgafv)
pngXgafv = lens _pngXgafv (\ s a -> s{_pngXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pngUploadProtocol :: Lens' ProjectsNotesGet (Maybe Text)
pngUploadProtocol
  = lens _pngUploadProtocol
      (\ s a -> s{_pngUploadProtocol = a})

-- | OAuth access token.
pngAccessToken :: Lens' ProjectsNotesGet (Maybe Text)
pngAccessToken
  = lens _pngAccessToken
      (\ s a -> s{_pngAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pngUploadType :: Lens' ProjectsNotesGet (Maybe Text)
pngUploadType
  = lens _pngUploadType
      (\ s a -> s{_pngUploadType = a})

-- | The name of the note in the form of
-- \`projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]\`.
pngName :: Lens' ProjectsNotesGet Text
pngName = lens _pngName (\ s a -> s{_pngName = a})

-- | JSONP
pngCallback :: Lens' ProjectsNotesGet (Maybe Text)
pngCallback
  = lens _pngCallback (\ s a -> s{_pngCallback = a})

instance GoogleRequest ProjectsNotesGet where
        type Rs ProjectsNotesGet = Note
        type Scopes ProjectsNotesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesGet'{..}
          = go _pngName _pngXgafv _pngUploadProtocol
              _pngAccessToken
              _pngUploadType
              _pngCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesGetResource)
                      mempty
