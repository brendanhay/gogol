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
-- Module      : Network.Google.Resource.Script.Projects.Versions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a version of a script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.versions.get@.
module Network.Google.Resource.Script.Projects.Versions.Get
    (
    -- * REST Resource
      ProjectsVersionsGetResource

    -- * Creating a Request
    , projectsVersionsGet
    , ProjectsVersionsGet

    -- * Request Lenses
    , pvgXgafv
    , pvgUploadProtocol
    , pvgAccessToken
    , pvgUploadType
    , pvgVersionNumber
    , pvgScriptId
    , pvgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.versions.get@ method which the
-- 'ProjectsVersionsGet' request conforms to.
type ProjectsVersionsGetResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "versions" :>
             Capture "versionNumber" (Textual Int32) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Version

-- | Gets a version of a script project.
--
-- /See:/ 'projectsVersionsGet' smart constructor.
data ProjectsVersionsGet =
  ProjectsVersionsGet'
    { _pvgXgafv          :: !(Maybe Xgafv)
    , _pvgUploadProtocol :: !(Maybe Text)
    , _pvgAccessToken    :: !(Maybe Text)
    , _pvgUploadType     :: !(Maybe Text)
    , _pvgVersionNumber  :: !(Textual Int32)
    , _pvgScriptId       :: !Text
    , _pvgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvgXgafv'
--
-- * 'pvgUploadProtocol'
--
-- * 'pvgAccessToken'
--
-- * 'pvgUploadType'
--
-- * 'pvgVersionNumber'
--
-- * 'pvgScriptId'
--
-- * 'pvgCallback'
projectsVersionsGet
    :: Int32 -- ^ 'pvgVersionNumber'
    -> Text -- ^ 'pvgScriptId'
    -> ProjectsVersionsGet
projectsVersionsGet pPvgVersionNumber_ pPvgScriptId_ =
  ProjectsVersionsGet'
    { _pvgXgafv = Nothing
    , _pvgUploadProtocol = Nothing
    , _pvgAccessToken = Nothing
    , _pvgUploadType = Nothing
    , _pvgVersionNumber = _Coerce # pPvgVersionNumber_
    , _pvgScriptId = pPvgScriptId_
    , _pvgCallback = Nothing
    }


-- | V1 error format.
pvgXgafv :: Lens' ProjectsVersionsGet (Maybe Xgafv)
pvgXgafv = lens _pvgXgafv (\ s a -> s{_pvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvgUploadProtocol :: Lens' ProjectsVersionsGet (Maybe Text)
pvgUploadProtocol
  = lens _pvgUploadProtocol
      (\ s a -> s{_pvgUploadProtocol = a})

-- | OAuth access token.
pvgAccessToken :: Lens' ProjectsVersionsGet (Maybe Text)
pvgAccessToken
  = lens _pvgAccessToken
      (\ s a -> s{_pvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvgUploadType :: Lens' ProjectsVersionsGet (Maybe Text)
pvgUploadType
  = lens _pvgUploadType
      (\ s a -> s{_pvgUploadType = a})

-- | The version number.
pvgVersionNumber :: Lens' ProjectsVersionsGet Int32
pvgVersionNumber
  = lens _pvgVersionNumber
      (\ s a -> s{_pvgVersionNumber = a})
      . _Coerce

-- | The script project\'s Drive ID.
pvgScriptId :: Lens' ProjectsVersionsGet Text
pvgScriptId
  = lens _pvgScriptId (\ s a -> s{_pvgScriptId = a})

-- | JSONP
pvgCallback :: Lens' ProjectsVersionsGet (Maybe Text)
pvgCallback
  = lens _pvgCallback (\ s a -> s{_pvgCallback = a})

instance GoogleRequest ProjectsVersionsGet where
        type Rs ProjectsVersionsGet = Version
        type Scopes ProjectsVersionsGet =
             '["https://www.googleapis.com/auth/script.projects",
               "https://www.googleapis.com/auth/script.projects.readonly"]
        requestClient ProjectsVersionsGet'{..}
          = go _pvgScriptId _pvgVersionNumber _pvgXgafv
              _pvgUploadProtocol
              _pvgAccessToken
              _pvgUploadType
              _pvgCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsVersionsGetResource)
                      mempty
