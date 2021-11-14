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
-- Module      : Network.Google.Resource.ContainerAnalysis.Projects.Notes.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.patch@.
module Network.Google.Resource.ContainerAnalysis.Projects.Notes.Patch
    (
    -- * REST Resource
      ProjectsNotesPatchResource

    -- * Creating a Request
    , projectsNotesPatch
    , ProjectsNotesPatch

    -- * Request Lenses
    , pnpXgafv
    , pnpUploadProtocol
    , pnpUpdateMask
    , pnpAccessToken
    , pnpUploadType
    , pnpPayload
    , pnpName
    , pnpCallback
    ) where

import Network.Google.ContainerAnalysis.Types
import Network.Google.Prelude

-- | A resource alias for @containeranalysis.projects.notes.patch@ method which the
-- 'ProjectsNotesPatch' request conforms to.
type ProjectsNotesPatchResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Note :> Patch '[JSON] Note

-- | Updates the specified note.
--
-- /See:/ 'projectsNotesPatch' smart constructor.
data ProjectsNotesPatch =
  ProjectsNotesPatch'
    { _pnpXgafv :: !(Maybe Xgafv)
    , _pnpUploadProtocol :: !(Maybe Text)
    , _pnpUpdateMask :: !(Maybe GFieldMask)
    , _pnpAccessToken :: !(Maybe Text)
    , _pnpUploadType :: !(Maybe Text)
    , _pnpPayload :: !Note
    , _pnpName :: !Text
    , _pnpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnpXgafv'
--
-- * 'pnpUploadProtocol'
--
-- * 'pnpUpdateMask'
--
-- * 'pnpAccessToken'
--
-- * 'pnpUploadType'
--
-- * 'pnpPayload'
--
-- * 'pnpName'
--
-- * 'pnpCallback'
projectsNotesPatch
    :: Note -- ^ 'pnpPayload'
    -> Text -- ^ 'pnpName'
    -> ProjectsNotesPatch
projectsNotesPatch pPnpPayload_ pPnpName_ =
  ProjectsNotesPatch'
    { _pnpXgafv = Nothing
    , _pnpUploadProtocol = Nothing
    , _pnpUpdateMask = Nothing
    , _pnpAccessToken = Nothing
    , _pnpUploadType = Nothing
    , _pnpPayload = pPnpPayload_
    , _pnpName = pPnpName_
    , _pnpCallback = Nothing
    }


-- | V1 error format.
pnpXgafv :: Lens' ProjectsNotesPatch (Maybe Xgafv)
pnpXgafv = lens _pnpXgafv (\ s a -> s{_pnpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pnpUploadProtocol :: Lens' ProjectsNotesPatch (Maybe Text)
pnpUploadProtocol
  = lens _pnpUploadProtocol
      (\ s a -> s{_pnpUploadProtocol = a})

-- | The fields to update.
pnpUpdateMask :: Lens' ProjectsNotesPatch (Maybe GFieldMask)
pnpUpdateMask
  = lens _pnpUpdateMask
      (\ s a -> s{_pnpUpdateMask = a})

-- | OAuth access token.
pnpAccessToken :: Lens' ProjectsNotesPatch (Maybe Text)
pnpAccessToken
  = lens _pnpAccessToken
      (\ s a -> s{_pnpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pnpUploadType :: Lens' ProjectsNotesPatch (Maybe Text)
pnpUploadType
  = lens _pnpUploadType
      (\ s a -> s{_pnpUploadType = a})

-- | Multipart request metadata.
pnpPayload :: Lens' ProjectsNotesPatch Note
pnpPayload
  = lens _pnpPayload (\ s a -> s{_pnpPayload = a})

-- | Required. The name of the note in the form of
-- \`projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]\`.
pnpName :: Lens' ProjectsNotesPatch Text
pnpName = lens _pnpName (\ s a -> s{_pnpName = a})

-- | JSONP
pnpCallback :: Lens' ProjectsNotesPatch (Maybe Text)
pnpCallback
  = lens _pnpCallback (\ s a -> s{_pnpCallback = a})

instance GoogleRequest ProjectsNotesPatch where
        type Rs ProjectsNotesPatch = Note
        type Scopes ProjectsNotesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsNotesPatch'{..}
          = go _pnpName _pnpXgafv _pnpUploadProtocol
              _pnpUpdateMask
              _pnpAccessToken
              _pnpUploadType
              _pnpCallback
              (Just AltJSON)
              _pnpPayload
              containerAnalysisService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsNotesPatchResource)
                      mempty
