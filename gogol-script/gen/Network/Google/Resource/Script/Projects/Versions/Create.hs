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
-- Module      : Network.Google.Resource.Script.Projects.Versions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new immutable version using the current code, with a unique
-- version number.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.versions.create@.
module Network.Google.Resource.Script.Projects.Versions.Create
    (
    -- * REST Resource
      ProjectsVersionsCreateResource

    -- * Creating a Request
    , projectsVersionsCreate
    , ProjectsVersionsCreate

    -- * Request Lenses
    , pvcXgafv
    , pvcUploadProtocol
    , pvcAccessToken
    , pvcUploadType
    , pvcPayload
    , pvcScriptId
    , pvcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.versions.create@ method which the
-- 'ProjectsVersionsCreate' request conforms to.
type ProjectsVersionsCreateResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "versions" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Version :> Post '[JSON] Version

-- | Creates a new immutable version using the current code, with a unique
-- version number.
--
-- /See:/ 'projectsVersionsCreate' smart constructor.
data ProjectsVersionsCreate =
  ProjectsVersionsCreate'
    { _pvcXgafv          :: !(Maybe Xgafv)
    , _pvcUploadProtocol :: !(Maybe Text)
    , _pvcAccessToken    :: !(Maybe Text)
    , _pvcUploadType     :: !(Maybe Text)
    , _pvcPayload        :: !Version
    , _pvcScriptId       :: !Text
    , _pvcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvcXgafv'
--
-- * 'pvcUploadProtocol'
--
-- * 'pvcAccessToken'
--
-- * 'pvcUploadType'
--
-- * 'pvcPayload'
--
-- * 'pvcScriptId'
--
-- * 'pvcCallback'
projectsVersionsCreate
    :: Version -- ^ 'pvcPayload'
    -> Text -- ^ 'pvcScriptId'
    -> ProjectsVersionsCreate
projectsVersionsCreate pPvcPayload_ pPvcScriptId_ =
  ProjectsVersionsCreate'
    { _pvcXgafv = Nothing
    , _pvcUploadProtocol = Nothing
    , _pvcAccessToken = Nothing
    , _pvcUploadType = Nothing
    , _pvcPayload = pPvcPayload_
    , _pvcScriptId = pPvcScriptId_
    , _pvcCallback = Nothing
    }


-- | V1 error format.
pvcXgafv :: Lens' ProjectsVersionsCreate (Maybe Xgafv)
pvcXgafv = lens _pvcXgafv (\ s a -> s{_pvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvcUploadProtocol :: Lens' ProjectsVersionsCreate (Maybe Text)
pvcUploadProtocol
  = lens _pvcUploadProtocol
      (\ s a -> s{_pvcUploadProtocol = a})

-- | OAuth access token.
pvcAccessToken :: Lens' ProjectsVersionsCreate (Maybe Text)
pvcAccessToken
  = lens _pvcAccessToken
      (\ s a -> s{_pvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvcUploadType :: Lens' ProjectsVersionsCreate (Maybe Text)
pvcUploadType
  = lens _pvcUploadType
      (\ s a -> s{_pvcUploadType = a})

-- | Multipart request metadata.
pvcPayload :: Lens' ProjectsVersionsCreate Version
pvcPayload
  = lens _pvcPayload (\ s a -> s{_pvcPayload = a})

-- | The script project\'s Drive ID.
pvcScriptId :: Lens' ProjectsVersionsCreate Text
pvcScriptId
  = lens _pvcScriptId (\ s a -> s{_pvcScriptId = a})

-- | JSONP
pvcCallback :: Lens' ProjectsVersionsCreate (Maybe Text)
pvcCallback
  = lens _pvcCallback (\ s a -> s{_pvcCallback = a})

instance GoogleRequest ProjectsVersionsCreate where
        type Rs ProjectsVersionsCreate = Version
        type Scopes ProjectsVersionsCreate =
             '["https://www.googleapis.com/auth/script.projects"]
        requestClient ProjectsVersionsCreate'{..}
          = go _pvcScriptId _pvcXgafv _pvcUploadProtocol
              _pvcAccessToken
              _pvcUploadType
              _pvcCallback
              (Just AltJSON)
              _pvcPayload
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsVersionsCreateResource)
                      mempty
