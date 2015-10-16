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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a project sink. After deletion, no new log entries are written
-- to the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksDelete@.
module Network.Google.Resource.Logging.Projects.Sinks.Delete
    (
    -- * REST Resource
      ProjectsSinksDeleteResource

    -- * Creating a Request
    , projectsSinksDelete'
    , ProjectsSinksDelete'

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdPp
    , psdAccessToken
    , psdUploadType
    , psdBearerToken
    , psdProjectsId
    , psdSinksId
    , psdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksDelete@ method which the
-- 'ProjectsSinksDelete'' request conforms to.
type ProjectsSinksDeleteResource =
     "v1beta3" :>
       "projects" :>
         Capture "projectsId" Text :>
           "sinks" :>
             Capture "sinksId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a project sink. After deletion, no new log entries are written
-- to the destination.
--
-- /See:/ 'projectsSinksDelete'' smart constructor.
data ProjectsSinksDelete' = ProjectsSinksDelete'
    { _psdXgafv          :: !(Maybe Text)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdPp             :: !Bool
    , _psdAccessToken    :: !(Maybe Text)
    , _psdUploadType     :: !(Maybe Text)
    , _psdBearerToken    :: !(Maybe Text)
    , _psdProjectsId     :: !Text
    , _psdSinksId        :: !Text
    , _psdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdUploadProtocol'
--
-- * 'psdPp'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdBearerToken'
--
-- * 'psdProjectsId'
--
-- * 'psdSinksId'
--
-- * 'psdCallback'
projectsSinksDelete'
    :: Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsSinksDelete'
projectsSinksDelete' pPsdProjectsId_ pPsdSinksId_ =
    ProjectsSinksDelete'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdPp = True
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdBearerToken = Nothing
    , _psdProjectsId = pPsdProjectsId_
    , _psdSinksId = pPsdSinksId_
    , _psdCallback = Nothing
    }

-- | V1 error format.
psdXgafv :: Lens' ProjectsSinksDelete' (Maybe Text)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsSinksDelete' (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | Pretty-print response.
psdPp :: Lens' ProjectsSinksDelete' Bool
psdPp = lens _psdPp (\ s a -> s{_psdPp = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsSinksDelete' (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsSinksDelete' (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | OAuth bearer token.
psdBearerToken :: Lens' ProjectsSinksDelete' (Maybe Text)
psdBearerToken
  = lens _psdBearerToken
      (\ s a -> s{_psdBearerToken = a})

-- | Part of \`sinkName\`. The resource name of the project sink to delete.
psdProjectsId :: Lens' ProjectsSinksDelete' Text
psdProjectsId
  = lens _psdProjectsId
      (\ s a -> s{_psdProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
psdSinksId :: Lens' ProjectsSinksDelete' Text
psdSinksId
  = lens _psdSinksId (\ s a -> s{_psdSinksId = a})

-- | JSONP
psdCallback :: Lens' ProjectsSinksDelete' (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest ProjectsSinksDelete' where
        type Rs ProjectsSinksDelete' = Empty
        requestClient ProjectsSinksDelete'{..}
          = go _psdProjectsId _psdSinksId _psdXgafv
              _psdUploadProtocol
              (Just _psdPp)
              _psdAccessToken
              _psdUploadType
              _psdBearerToken
              _psdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksDeleteResource)
                      mempty
