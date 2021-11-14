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
-- Module      : Network.Google.Resource.SourceRepo.Projects.GetConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Cloud Source Repositories configuration of the project.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.getConfig@.
module Network.Google.Resource.SourceRepo.Projects.GetConfig
    (
    -- * REST Resource
      ProjectsGetConfigResource

    -- * Creating a Request
    , projectsGetConfig
    , ProjectsGetConfig

    -- * Request Lenses
    , pgcXgafv
    , pgcUploadProtocol
    , pgcAccessToken
    , pgcUploadType
    , pgcName
    , pgcCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.getConfig@ method which the
-- 'ProjectsGetConfig' request conforms to.
type ProjectsGetConfigResource =
     "v1" :>
       Capture "name" Text :>
         "config" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ProjectConfig

-- | Returns the Cloud Source Repositories configuration of the project.
--
-- /See:/ 'projectsGetConfig' smart constructor.
data ProjectsGetConfig =
  ProjectsGetConfig'
    { _pgcXgafv :: !(Maybe Xgafv)
    , _pgcUploadProtocol :: !(Maybe Text)
    , _pgcAccessToken :: !(Maybe Text)
    , _pgcUploadType :: !(Maybe Text)
    , _pgcName :: !Text
    , _pgcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgcXgafv'
--
-- * 'pgcUploadProtocol'
--
-- * 'pgcAccessToken'
--
-- * 'pgcUploadType'
--
-- * 'pgcName'
--
-- * 'pgcCallback'
projectsGetConfig
    :: Text -- ^ 'pgcName'
    -> ProjectsGetConfig
projectsGetConfig pPgcName_ =
  ProjectsGetConfig'
    { _pgcXgafv = Nothing
    , _pgcUploadProtocol = Nothing
    , _pgcAccessToken = Nothing
    , _pgcUploadType = Nothing
    , _pgcName = pPgcName_
    , _pgcCallback = Nothing
    }


-- | V1 error format.
pgcXgafv :: Lens' ProjectsGetConfig (Maybe Xgafv)
pgcXgafv = lens _pgcXgafv (\ s a -> s{_pgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgcUploadProtocol :: Lens' ProjectsGetConfig (Maybe Text)
pgcUploadProtocol
  = lens _pgcUploadProtocol
      (\ s a -> s{_pgcUploadProtocol = a})

-- | OAuth access token.
pgcAccessToken :: Lens' ProjectsGetConfig (Maybe Text)
pgcAccessToken
  = lens _pgcAccessToken
      (\ s a -> s{_pgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgcUploadType :: Lens' ProjectsGetConfig (Maybe Text)
pgcUploadType
  = lens _pgcUploadType
      (\ s a -> s{_pgcUploadType = a})

-- | The name of the requested project. Values are of the form
-- \`projects\/\`.
pgcName :: Lens' ProjectsGetConfig Text
pgcName = lens _pgcName (\ s a -> s{_pgcName = a})

-- | JSONP
pgcCallback :: Lens' ProjectsGetConfig (Maybe Text)
pgcCallback
  = lens _pgcCallback (\ s a -> s{_pgcCallback = a})

instance GoogleRequest ProjectsGetConfig where
        type Rs ProjectsGetConfig = ProjectConfig
        type Scopes ProjectsGetConfig =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGetConfig'{..}
          = go _pgcName _pgcXgafv _pgcUploadProtocol
              _pgcAccessToken
              _pgcUploadType
              _pgcCallback
              (Just AltJSON)
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetConfigResource)
                      mempty
