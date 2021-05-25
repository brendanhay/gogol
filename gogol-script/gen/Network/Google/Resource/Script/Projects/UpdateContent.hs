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
-- Module      : Network.Google.Resource.Script.Projects.UpdateContent
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of the specified script project. This content is
-- stored as the HEAD version, and is used when the script is executed as a
-- trigger, in the script editor, in add-on preview mode, or as a web app
-- or Apps Script API in development mode. This clears all the existing
-- files in the project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.updateContent@.
module Network.Google.Resource.Script.Projects.UpdateContent
    (
    -- * REST Resource
      ProjectsUpdateContentResource

    -- * Creating a Request
    , projectsUpdateContent
    , ProjectsUpdateContent

    -- * Request Lenses
    , pucXgafv
    , pucUploadProtocol
    , pucAccessToken
    , pucUploadType
    , pucPayload
    , pucScriptId
    , pucCallback
    ) where

import Network.Google.Prelude
import Network.Google.Script.Types

-- | A resource alias for @script.projects.updateContent@ method which the
-- 'ProjectsUpdateContent' request conforms to.
type ProjectsUpdateContentResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "content" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Content :> Put '[JSON] Content

-- | Updates the content of the specified script project. This content is
-- stored as the HEAD version, and is used when the script is executed as a
-- trigger, in the script editor, in add-on preview mode, or as a web app
-- or Apps Script API in development mode. This clears all the existing
-- files in the project.
--
-- /See:/ 'projectsUpdateContent' smart constructor.
data ProjectsUpdateContent =
  ProjectsUpdateContent'
    { _pucXgafv :: !(Maybe Xgafv)
    , _pucUploadProtocol :: !(Maybe Text)
    , _pucAccessToken :: !(Maybe Text)
    , _pucUploadType :: !(Maybe Text)
    , _pucPayload :: !Content
    , _pucScriptId :: !Text
    , _pucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUpdateContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pucXgafv'
--
-- * 'pucUploadProtocol'
--
-- * 'pucAccessToken'
--
-- * 'pucUploadType'
--
-- * 'pucPayload'
--
-- * 'pucScriptId'
--
-- * 'pucCallback'
projectsUpdateContent
    :: Content -- ^ 'pucPayload'
    -> Text -- ^ 'pucScriptId'
    -> ProjectsUpdateContent
projectsUpdateContent pPucPayload_ pPucScriptId_ =
  ProjectsUpdateContent'
    { _pucXgafv = Nothing
    , _pucUploadProtocol = Nothing
    , _pucAccessToken = Nothing
    , _pucUploadType = Nothing
    , _pucPayload = pPucPayload_
    , _pucScriptId = pPucScriptId_
    , _pucCallback = Nothing
    }


-- | V1 error format.
pucXgafv :: Lens' ProjectsUpdateContent (Maybe Xgafv)
pucXgafv = lens _pucXgafv (\ s a -> s{_pucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pucUploadProtocol :: Lens' ProjectsUpdateContent (Maybe Text)
pucUploadProtocol
  = lens _pucUploadProtocol
      (\ s a -> s{_pucUploadProtocol = a})

-- | OAuth access token.
pucAccessToken :: Lens' ProjectsUpdateContent (Maybe Text)
pucAccessToken
  = lens _pucAccessToken
      (\ s a -> s{_pucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pucUploadType :: Lens' ProjectsUpdateContent (Maybe Text)
pucUploadType
  = lens _pucUploadType
      (\ s a -> s{_pucUploadType = a})

-- | Multipart request metadata.
pucPayload :: Lens' ProjectsUpdateContent Content
pucPayload
  = lens _pucPayload (\ s a -> s{_pucPayload = a})

-- | The script project\'s Drive ID.
pucScriptId :: Lens' ProjectsUpdateContent Text
pucScriptId
  = lens _pucScriptId (\ s a -> s{_pucScriptId = a})

-- | JSONP
pucCallback :: Lens' ProjectsUpdateContent (Maybe Text)
pucCallback
  = lens _pucCallback (\ s a -> s{_pucCallback = a})

instance GoogleRequest ProjectsUpdateContent where
        type Rs ProjectsUpdateContent = Content
        type Scopes ProjectsUpdateContent =
             '["https://www.googleapis.com/auth/script.projects"]
        requestClient ProjectsUpdateContent'{..}
          = go _pucScriptId _pucXgafv _pucUploadProtocol
              _pucAccessToken
              _pucUploadType
              _pucCallback
              (Just AltJSON)
              _pucPayload
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUpdateContentResource)
                      mempty
