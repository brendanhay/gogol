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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists project sinks associated with a project.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksList@.
module Network.Google.Resource.Logging.Projects.Sinks.List
    (
    -- * REST Resource
      ProjectsSinksListResource

    -- * Creating a Request
    , projectsSinksList'
    , ProjectsSinksList'

    -- * Request Lenses
    , pslXgafv
    , pslUploadProtocol
    , pslPp
    , pslAccessToken
    , pslUploadType
    , pslBearerToken
    , pslProjectsId
    , pslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksList@ method which the
-- 'ProjectsSinksList'' request conforms to.
type ProjectsSinksListResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "sinks" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSinksResponse

-- | Lists project sinks associated with a project.
--
-- /See:/ 'projectsSinksList'' smart constructor.
data ProjectsSinksList' = ProjectsSinksList'
    { _pslXgafv          :: !(Maybe Text)
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslPp             :: !Bool
    , _pslAccessToken    :: !(Maybe Text)
    , _pslUploadType     :: !(Maybe Text)
    , _pslBearerToken    :: !(Maybe Text)
    , _pslProjectsId     :: !Text
    , _pslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslXgafv'
--
-- * 'pslUploadProtocol'
--
-- * 'pslPp'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslBearerToken'
--
-- * 'pslProjectsId'
--
-- * 'pslCallback'
projectsSinksList'
    :: Text -- ^ 'projectsId'
    -> ProjectsSinksList'
projectsSinksList' pPslProjectsId_ =
    ProjectsSinksList'
    { _pslXgafv = Nothing
    , _pslUploadProtocol = Nothing
    , _pslPp = True
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslBearerToken = Nothing
    , _pslProjectsId = pPslProjectsId_
    , _pslCallback = Nothing
    }

-- | V1 error format.
pslXgafv :: Lens' ProjectsSinksList' (Maybe Text)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSinksList' (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | Pretty-print response.
pslPp :: Lens' ProjectsSinksList' Bool
pslPp = lens _pslPp (\ s a -> s{_pslPp = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSinksList' (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSinksList' (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | OAuth bearer token.
pslBearerToken :: Lens' ProjectsSinksList' (Maybe Text)
pslBearerToken
  = lens _pslBearerToken
      (\ s a -> s{_pslBearerToken = a})

-- | Part of \`projectName\`. The project whose sinks are wanted.
pslProjectsId :: Lens' ProjectsSinksList' Text
pslProjectsId
  = lens _pslProjectsId
      (\ s a -> s{_pslProjectsId = a})

-- | JSONP
pslCallback :: Lens' ProjectsSinksList' (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleRequest ProjectsSinksList' where
        type Rs ProjectsSinksList' = ListSinksResponse
        requestClient ProjectsSinksList'{..}
          = go _pslProjectsId _pslXgafv _pslUploadProtocol
              (Just _pslPp)
              _pslAccessToken
              _pslUploadType
              _pslBearerToken
              _pslCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksListResource)
                      mempty
