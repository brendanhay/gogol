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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or inserts a document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.patch@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.Patch
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsPatchResource

    -- * Creating a Request
    , projectsDatabasesDocumentsPatch
    , ProjectsDatabasesDocumentsPatch

    -- * Request Lenses
    , pddpXgafv
    , pddpUpdateMaskFieldPaths
    , pddpUploadProtocol
    , pddpCurrentDocumentExists
    , pddpAccessToken
    , pddpUploadType
    , pddpPayload
    , pddpCurrentDocumentUpdateTime
    , pddpName
    , pddpMaskFieldPaths
    , pddpCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.patch@ method which the
-- 'ProjectsDatabasesDocumentsPatch' request conforms to.
type ProjectsDatabasesDocumentsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParams "updateMask.fieldPaths" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "currentDocument.exists" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "currentDocument.updateTime" DateTime' :>
                       QueryParams "mask.fieldPaths" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Document :> Patch '[JSON] Document

-- | Updates or inserts a document.
--
-- /See:/ 'projectsDatabasesDocumentsPatch' smart constructor.
data ProjectsDatabasesDocumentsPatch =
  ProjectsDatabasesDocumentsPatch'
    { _pddpXgafv :: !(Maybe Xgafv)
    , _pddpUpdateMaskFieldPaths :: !(Maybe [Text])
    , _pddpUploadProtocol :: !(Maybe Text)
    , _pddpCurrentDocumentExists :: !(Maybe Bool)
    , _pddpAccessToken :: !(Maybe Text)
    , _pddpUploadType :: !(Maybe Text)
    , _pddpPayload :: !Document
    , _pddpCurrentDocumentUpdateTime :: !(Maybe DateTime')
    , _pddpName :: !Text
    , _pddpMaskFieldPaths :: !(Maybe [Text])
    , _pddpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddpXgafv'
--
-- * 'pddpUpdateMaskFieldPaths'
--
-- * 'pddpUploadProtocol'
--
-- * 'pddpCurrentDocumentExists'
--
-- * 'pddpAccessToken'
--
-- * 'pddpUploadType'
--
-- * 'pddpPayload'
--
-- * 'pddpCurrentDocumentUpdateTime'
--
-- * 'pddpName'
--
-- * 'pddpMaskFieldPaths'
--
-- * 'pddpCallback'
projectsDatabasesDocumentsPatch
    :: Document -- ^ 'pddpPayload'
    -> Text -- ^ 'pddpName'
    -> ProjectsDatabasesDocumentsPatch
projectsDatabasesDocumentsPatch pPddpPayload_ pPddpName_ =
  ProjectsDatabasesDocumentsPatch'
    { _pddpXgafv = Nothing
    , _pddpUpdateMaskFieldPaths = Nothing
    , _pddpUploadProtocol = Nothing
    , _pddpCurrentDocumentExists = Nothing
    , _pddpAccessToken = Nothing
    , _pddpUploadType = Nothing
    , _pddpPayload = pPddpPayload_
    , _pddpCurrentDocumentUpdateTime = Nothing
    , _pddpName = pPddpName_
    , _pddpMaskFieldPaths = Nothing
    , _pddpCallback = Nothing
    }


-- | V1 error format.
pddpXgafv :: Lens' ProjectsDatabasesDocumentsPatch (Maybe Xgafv)
pddpXgafv
  = lens _pddpXgafv (\ s a -> s{_pddpXgafv = a})

-- | The list of field paths in the mask. See Document.fields for a field
-- path syntax reference.
pddpUpdateMaskFieldPaths :: Lens' ProjectsDatabasesDocumentsPatch [Text]
pddpUpdateMaskFieldPaths
  = lens _pddpUpdateMaskFieldPaths
      (\ s a -> s{_pddpUpdateMaskFieldPaths = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddpUploadProtocol :: Lens' ProjectsDatabasesDocumentsPatch (Maybe Text)
pddpUploadProtocol
  = lens _pddpUploadProtocol
      (\ s a -> s{_pddpUploadProtocol = a})

-- | When set to \`true\`, the target document must exist. When set to
-- \`false\`, the target document must not exist.
pddpCurrentDocumentExists :: Lens' ProjectsDatabasesDocumentsPatch (Maybe Bool)
pddpCurrentDocumentExists
  = lens _pddpCurrentDocumentExists
      (\ s a -> s{_pddpCurrentDocumentExists = a})

-- | OAuth access token.
pddpAccessToken :: Lens' ProjectsDatabasesDocumentsPatch (Maybe Text)
pddpAccessToken
  = lens _pddpAccessToken
      (\ s a -> s{_pddpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddpUploadType :: Lens' ProjectsDatabasesDocumentsPatch (Maybe Text)
pddpUploadType
  = lens _pddpUploadType
      (\ s a -> s{_pddpUploadType = a})

-- | Multipart request metadata.
pddpPayload :: Lens' ProjectsDatabasesDocumentsPatch Document
pddpPayload
  = lens _pddpPayload (\ s a -> s{_pddpPayload = a})

-- | When set, the target document must exist and have been last updated at
-- that time.
pddpCurrentDocumentUpdateTime :: Lens' ProjectsDatabasesDocumentsPatch (Maybe UTCTime)
pddpCurrentDocumentUpdateTime
  = lens _pddpCurrentDocumentUpdateTime
      (\ s a -> s{_pddpCurrentDocumentUpdateTime = a})
      . mapping _DateTime

-- | The resource name of the document, for example
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
pddpName :: Lens' ProjectsDatabasesDocumentsPatch Text
pddpName = lens _pddpName (\ s a -> s{_pddpName = a})

-- | The list of field paths in the mask. See Document.fields for a field
-- path syntax reference.
pddpMaskFieldPaths :: Lens' ProjectsDatabasesDocumentsPatch [Text]
pddpMaskFieldPaths
  = lens _pddpMaskFieldPaths
      (\ s a -> s{_pddpMaskFieldPaths = a})
      . _Default
      . _Coerce

-- | JSONP
pddpCallback :: Lens' ProjectsDatabasesDocumentsPatch (Maybe Text)
pddpCallback
  = lens _pddpCallback (\ s a -> s{_pddpCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsPatch
         where
        type Rs ProjectsDatabasesDocumentsPatch = Document
        type Scopes ProjectsDatabasesDocumentsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsPatch'{..}
          = go _pddpName _pddpXgafv
              (_pddpUpdateMaskFieldPaths ^. _Default)
              _pddpUploadProtocol
              _pddpCurrentDocumentExists
              _pddpAccessToken
              _pddpUploadType
              _pddpCurrentDocumentUpdateTime
              (_pddpMaskFieldPaths ^. _Default)
              _pddpCallback
              (Just AltJSON)
              _pddpPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsPatchResource)
                      mempty
