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
-- Module      : Network.Google.Resource.Script.Projects.Versions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the versions of a script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.versions.list@.
module Network.Google.Resource.Script.Projects.Versions.List
    (
    -- * REST Resource
      ProjectsVersionsListResource

    -- * Creating a Request
    , projectsVersionsList
    , ProjectsVersionsList

    -- * Request Lenses
    , pvlXgafv
    , pvlUploadProtocol
    , pvlAccessToken
    , pvlUploadType
    , pvlScriptId
    , pvlPageToken
    , pvlPageSize
    , pvlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.versions.list@ method which the
-- 'ProjectsVersionsList' request conforms to.
type ProjectsVersionsListResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "versions" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListVersionsResponse

-- | List the versions of a script project.
--
-- /See:/ 'projectsVersionsList' smart constructor.
data ProjectsVersionsList =
  ProjectsVersionsList'
    { _pvlXgafv          :: !(Maybe Xgafv)
    , _pvlUploadProtocol :: !(Maybe Text)
    , _pvlAccessToken    :: !(Maybe Text)
    , _pvlUploadType     :: !(Maybe Text)
    , _pvlScriptId       :: !Text
    , _pvlPageToken      :: !(Maybe Text)
    , _pvlPageSize       :: !(Maybe (Textual Int32))
    , _pvlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvlXgafv'
--
-- * 'pvlUploadProtocol'
--
-- * 'pvlAccessToken'
--
-- * 'pvlUploadType'
--
-- * 'pvlScriptId'
--
-- * 'pvlPageToken'
--
-- * 'pvlPageSize'
--
-- * 'pvlCallback'
projectsVersionsList
    :: Text -- ^ 'pvlScriptId'
    -> ProjectsVersionsList
projectsVersionsList pPvlScriptId_ =
  ProjectsVersionsList'
    { _pvlXgafv = Nothing
    , _pvlUploadProtocol = Nothing
    , _pvlAccessToken = Nothing
    , _pvlUploadType = Nothing
    , _pvlScriptId = pPvlScriptId_
    , _pvlPageToken = Nothing
    , _pvlPageSize = Nothing
    , _pvlCallback = Nothing
    }

-- | V1 error format.
pvlXgafv :: Lens' ProjectsVersionsList (Maybe Xgafv)
pvlXgafv = lens _pvlXgafv (\ s a -> s{_pvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvlUploadProtocol :: Lens' ProjectsVersionsList (Maybe Text)
pvlUploadProtocol
  = lens _pvlUploadProtocol
      (\ s a -> s{_pvlUploadProtocol = a})

-- | OAuth access token.
pvlAccessToken :: Lens' ProjectsVersionsList (Maybe Text)
pvlAccessToken
  = lens _pvlAccessToken
      (\ s a -> s{_pvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvlUploadType :: Lens' ProjectsVersionsList (Maybe Text)
pvlUploadType
  = lens _pvlUploadType
      (\ s a -> s{_pvlUploadType = a})

-- | The script project\'s Drive ID.
pvlScriptId :: Lens' ProjectsVersionsList Text
pvlScriptId
  = lens _pvlScriptId (\ s a -> s{_pvlScriptId = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \`nextPageToken\` from a previous
-- response.
pvlPageToken :: Lens' ProjectsVersionsList (Maybe Text)
pvlPageToken
  = lens _pvlPageToken (\ s a -> s{_pvlPageToken = a})

-- | The maximum number of versions on each returned page. Defaults to 50.
pvlPageSize :: Lens' ProjectsVersionsList (Maybe Int32)
pvlPageSize
  = lens _pvlPageSize (\ s a -> s{_pvlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pvlCallback :: Lens' ProjectsVersionsList (Maybe Text)
pvlCallback
  = lens _pvlCallback (\ s a -> s{_pvlCallback = a})

instance GoogleRequest ProjectsVersionsList where
        type Rs ProjectsVersionsList = ListVersionsResponse
        type Scopes ProjectsVersionsList =
             '["https://www.googleapis.com/auth/script.projects",
               "https://www.googleapis.com/auth/script.projects.readonly"]
        requestClient ProjectsVersionsList'{..}
          = go _pvlScriptId _pvlXgafv _pvlUploadProtocol
              _pvlAccessToken
              _pvlUploadType
              _pvlPageToken
              _pvlPageSize
              _pvlCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsVersionsListResource)
                      mempty
