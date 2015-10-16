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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a project sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksGet@.
module Network.Google.Resource.Logging.Projects.Sinks.Get
    (
    -- * REST Resource
      ProjectsSinksGetResource

    -- * Creating a Request
    , projectsSinksGet'
    , ProjectsSinksGet'

    -- * Request Lenses
    , psgXgafv
    , psgUploadProtocol
    , psgPp
    , psgAccessToken
    , psgUploadType
    , psgBearerToken
    , psgProjectsId
    , psgSinksId
    , psgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksGet@ method which the
-- 'ProjectsSinksGet'' request conforms to.
type ProjectsSinksGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a project sink.
--
-- /See:/ 'projectsSinksGet'' smart constructor.
data ProjectsSinksGet' = ProjectsSinksGet'
    { _psgXgafv          :: !(Maybe Text)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgPp             :: !Bool
    , _psgAccessToken    :: !(Maybe Text)
    , _psgUploadType     :: !(Maybe Text)
    , _psgBearerToken    :: !(Maybe Text)
    , _psgProjectsId     :: !Text
    , _psgSinksId        :: !Text
    , _psgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgUploadProtocol'
--
-- * 'psgPp'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgBearerToken'
--
-- * 'psgProjectsId'
--
-- * 'psgSinksId'
--
-- * 'psgCallback'
projectsSinksGet'
    :: Text -- ^ 'projectsId'
    -> Text -- ^ 'sinksId'
    -> ProjectsSinksGet'
projectsSinksGet' pPsgProjectsId_ pPsgSinksId_ =
    ProjectsSinksGet'
    { _psgXgafv = Nothing
    , _psgUploadProtocol = Nothing
    , _psgPp = True
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgBearerToken = Nothing
    , _psgProjectsId = pPsgProjectsId_
    , _psgSinksId = pPsgSinksId_
    , _psgCallback = Nothing
    }

-- | V1 error format.
psgXgafv :: Lens' ProjectsSinksGet' (Maybe Text)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSinksGet' (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | Pretty-print response.
psgPp :: Lens' ProjectsSinksGet' Bool
psgPp = lens _psgPp (\ s a -> s{_psgPp = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSinksGet' (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSinksGet' (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | OAuth bearer token.
psgBearerToken :: Lens' ProjectsSinksGet' (Maybe Text)
psgBearerToken
  = lens _psgBearerToken
      (\ s a -> s{_psgBearerToken = a})

-- | Part of \`sinkName\`. The resource name of the project sink to return.
psgProjectsId :: Lens' ProjectsSinksGet' Text
psgProjectsId
  = lens _psgProjectsId
      (\ s a -> s{_psgProjectsId = a})

-- | Part of \`sinkName\`. See documentation of \`projectsId\`.
psgSinksId :: Lens' ProjectsSinksGet' Text
psgSinksId
  = lens _psgSinksId (\ s a -> s{_psgSinksId = a})

-- | JSONP
psgCallback :: Lens' ProjectsSinksGet' (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

instance GoogleRequest ProjectsSinksGet' where
        type Rs ProjectsSinksGet' = LogSink
        requestClient ProjectsSinksGet'{..}
          = go _psgProjectsId _psgSinksId _psgXgafv
              _psgUploadProtocol
              (Just _psgPp)
              _psgAccessToken
              _psgUploadType
              _psgBearerToken
              _psgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksGetResource)
                      mempty
