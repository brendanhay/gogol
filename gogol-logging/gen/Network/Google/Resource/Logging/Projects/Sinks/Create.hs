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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.sinks.create@.
module Network.Google.Resource.Logging.Projects.Sinks.Create
    (
    -- * REST Resource
      ProjectsSinksCreateResource

    -- * Creating a Request
    , projectsSinksCreate
    , ProjectsSinksCreate

    -- * Request Lenses
    , pscParent
    , pscXgafv
    , pscUploadProtocol
    , pscPp
    , pscAccessToken
    , pscUploadType
    , pscPayload
    , pscBearerToken
    , pscCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.create@ method which the
-- 'ProjectsSinksCreate' request conforms to.
type ProjectsSinksCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "sinks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] LogSink :> Post '[JSON] LogSink

-- | Creates a sink.
--
-- /See:/ 'projectsSinksCreate' smart constructor.
data ProjectsSinksCreate = ProjectsSinksCreate'
    { _pscParent         :: !Text
    , _pscXgafv          :: !(Maybe Xgafv)
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscPp             :: !Bool
    , _pscAccessToken    :: !(Maybe Text)
    , _pscUploadType     :: !(Maybe Text)
    , _pscPayload        :: !LogSink
    , _pscBearerToken    :: !(Maybe Text)
    , _pscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscParent'
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
-- * 'pscCallback'
projectsSinksCreate
    :: Text -- ^ 'pscParent'
    -> LogSink -- ^ 'pscPayload'
    -> ProjectsSinksCreate
projectsSinksCreate pPscParent_ pPscPayload_ =
    ProjectsSinksCreate'
    { _pscParent = pPscParent_
    , _pscXgafv = Nothing
    , _pscUploadProtocol = Nothing
    , _pscPp = True
    , _pscAccessToken = Nothing
    , _pscUploadType = Nothing
    , _pscPayload = pPscPayload_
    , _pscBearerToken = Nothing
    , _pscCallback = Nothing
    }

-- | Required. The resource in which to create the sink. Example:
-- \`\"projects\/my-project-id\"\`. The new sink must be provided in the
-- request.
pscParent :: Lens' ProjectsSinksCreate Text
pscParent
  = lens _pscParent (\ s a -> s{_pscParent = a})

-- | V1 error format.
pscXgafv :: Lens' ProjectsSinksCreate (Maybe Xgafv)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' ProjectsSinksCreate (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | Pretty-print response.
pscPp :: Lens' ProjectsSinksCreate Bool
pscPp = lens _pscPp (\ s a -> s{_pscPp = a})

-- | OAuth access token.
pscAccessToken :: Lens' ProjectsSinksCreate (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' ProjectsSinksCreate (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | Multipart request metadata.
pscPayload :: Lens' ProjectsSinksCreate LogSink
pscPayload
  = lens _pscPayload (\ s a -> s{_pscPayload = a})

-- | OAuth bearer token.
pscBearerToken :: Lens' ProjectsSinksCreate (Maybe Text)
pscBearerToken
  = lens _pscBearerToken
      (\ s a -> s{_pscBearerToken = a})

-- | JSONP
pscCallback :: Lens' ProjectsSinksCreate (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

instance GoogleRequest ProjectsSinksCreate where
        type Rs ProjectsSinksCreate = LogSink
        type Scopes ProjectsSinksCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsSinksCreate'{..}
          = go _pscParent _pscXgafv _pscUploadProtocol
              (Just _pscPp)
              _pscAccessToken
              _pscUploadType
              _pscBearerToken
              _pscCallback
              (Just AltJSON)
              _pscPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSinksCreateResource)
                      mempty
