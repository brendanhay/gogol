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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.delete@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Delete
    (
    -- * REST Resource
      ProjectsNotesDeleteResource

    -- * Creating a Request
    , projectsNotesDelete
    , ProjectsNotesDelete

    -- * Request Lenses
    , pndXgafv
    , pndUploadProtocol
    , pndAccessToken
    , pndUploadType
    , pndName
    , pndCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.delete@ method which the
-- 'ProjectsNotesDelete' request conforms to.
type ProjectsNotesDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified note.
--
-- /See:/ 'projectsNotesDelete' smart constructor.
data ProjectsNotesDelete =
  ProjectsNotesDelete'
    { _pndXgafv :: !(Maybe Xgafv)
    , _pndUploadProtocol :: !(Maybe Text)
    , _pndAccessToken :: !(Maybe Text)
    , _pndUploadType :: !(Maybe Text)
    , _pndName :: !Text
    , _pndCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pndXgafv'
--
-- * 'pndUploadProtocol'
--
-- * 'pndAccessToken'
--
-- * 'pndUploadType'
--
-- * 'pndName'
--
-- * 'pndCallback'
projectsNotesDelete
    :: Text -- ^ 'pndName'
    -> ProjectsNotesDelete
projectsNotesDelete pPndName_ =
  ProjectsNotesDelete'
    { _pndXgafv = Nothing
    , _pndUploadProtocol = Nothing
    , _pndAccessToken = Nothing
    , _pndUploadType = Nothing
    , _pndName = pPndName_
    , _pndCallback = Nothing
    }


-- | V1 error format.
pndXgafv :: Lens' ProjectsNotesDelete (Maybe Xgafv)
pndXgafv = lens _pndXgafv (\ s a -> s{_pndXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pndUploadProtocol :: Lens' ProjectsNotesDelete (Maybe Text)
pndUploadProtocol
  = lens _pndUploadProtocol
      (\ s a -> s{_pndUploadProtocol = a})

-- | OAuth access token.
pndAccessToken :: Lens' ProjectsNotesDelete (Maybe Text)
pndAccessToken
  = lens _pndAccessToken
      (\ s a -> s{_pndAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pndUploadType :: Lens' ProjectsNotesDelete (Maybe Text)
pndUploadType
  = lens _pndUploadType
      (\ s a -> s{_pndUploadType = a})

-- | Required. The name of the note in the form of
-- \`projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]\`.
pndName :: Lens' ProjectsNotesDelete Text
pndName = lens _pndName (\ s a -> s{_pndName = a})

-- | JSONP
pndCallback :: Lens' ProjectsNotesDelete (Maybe Text)
pndCallback
  = lens _pndCallback (\ s a -> s{_pndCallback = a})

instance GoogleRequest ProjectsNotesDelete where
        type Rs ProjectsNotesDelete = Empty
        type Scopes ProjectsNotesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesDelete'{..}
          = go _pndName _pndXgafv _pndUploadProtocol
              _pndAccessToken
              _pndUploadType
              _pndCallback
              (Just AltJSON)
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesDeleteResource)
                      mempty
