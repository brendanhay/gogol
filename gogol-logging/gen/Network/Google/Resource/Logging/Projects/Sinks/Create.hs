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
-- Module      : Network.Google.Resource.Logging.Projects.Sinks.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a project sink. A logs filter determines which log entries are
-- written to the destination.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @LoggingProjectsSinksCreate@.
module Network.Google.Resource.Logging.Projects.Sinks.Create
    (
    -- * REST Resource
      ProjectsSinksCreateResource

    -- * Creating a Request
    , projectsSinksCreate'
    , ProjectsSinksCreate'

    -- * Request Lenses
    , pscXgafv
    , pscUploadProtocol
    , pscPp
    , pscAccessToken
    , pscUploadType
    , pscPayload
    , pscBearerToken
    , pscProjectsId
    , pscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @LoggingProjectsSinksCreate@ method which the
-- 'ProjectsSinksCreate'' request conforms to.
type ProjectsSinksCreateResource =
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
                             ReqBody '[JSON] LogSink :> Post '[JSON] LogSink

-- | Creates a project sink. A logs filter determines which log entries are
-- written to the destination.
--
-- /See:/ 'projectsSinksCreate'' smart constructor.
data ProjectsSinksCreate' = ProjectsSinksCreate'
    { _pscXgafv          :: !(Maybe Text)
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscPp             :: !Bool
    , _pscAccessToken    :: !(Maybe Text)
    , _pscUploadType     :: !(Maybe Text)
    , _pscPayload        :: !LogSink
    , _pscBearerToken    :: !(Maybe Text)
    , _pscProjectsId     :: !Text
    , _pscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscXgafv'
--
-- * 'pscUploadProtocol'
--
-- * 'pscPp'
--
-- * 'pscAccessToken'
--
-- * 'pscUploadType'
--
-- * 'pscPayload'
--
-- * 'pscBearerToken'
--
-- * 'pscProjectsId'
--
-- * 'pscCallback'
projectsSinksCreate'
    :: LogSink -- ^ 'payload'
    -> Text -- ^ 'projectsId'
    -> ProjectsSinksCreate'
projectsSinksCreate' pPscPayload_ pPscProjectsId_ =
    ProjectsSinksCreate'
    { _pscXgafv = Nothing
    , _pscUploadProtocol = Nothing
    , _pscPp = True
    , _pscAccessToken = Nothing
    , _pscUploadType = Nothing
    , _pscPayload = pPscPayload_
    , _pscBearerToken = Nothing
    , _pscProjectsId = pPscProjectsId_
    , _pscCallback = Nothing
    }

-- | V1 error format.
pscXgafv :: Lens' ProjectsSinksCreate' (Maybe Text)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' ProjectsSinksCreate' (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | Pretty-print response.
pscPp :: Lens' ProjectsSinksCreate' Bool
pscPp = lens _pscPp (\ s a -> s{_pscPp = a})

-- | OAuth access token.
pscAccessToken :: Lens' ProjectsSinksCreate' (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' ProjectsSinksCreate' (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | Multipart request metadata.
pscPayload :: Lens' ProjectsSinksCreate' LogSink
pscPayload
  = lens _pscPayload (\ s a -> s{_pscPayload = a})

-- | OAuth bearer token.
pscBearerToken :: Lens' ProjectsSinksCreate' (Maybe Text)
pscBearerToken
  = lens _pscBearerToken
      (\ s a -> s{_pscBearerToken = a})

-- | Part of \`projectName\`. The resource name of the project to which the
-- sink is bound.
pscProjectsId :: Lens' ProjectsSinksCreate' Text
pscProjectsId
  = lens _pscProjectsId
      (\ s a -> s{_pscProjectsId = a})

-- | JSONP
pscCallback :: Lens' ProjectsSinksCreate' (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

instance GoogleRequest ProjectsSinksCreate' where
        type Rs ProjectsSinksCreate' = LogSink
        requestClient ProjectsSinksCreate'{..}
          = go _pscProjectsId _pscXgafv _pscUploadProtocol
              (Just _pscPp)
              _pscAccessToken
              _pscUploadType
              _pscBearerToken
              _pscCallback
              (Just AltJSON)
              _pscPayload
              logging
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksCreateResource)
                      mempty
