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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.sinks.get@.
module Network.Google.Resource.Logging.Projects.Sinks.Get
    (
    -- * REST Resource
      ProjectsSinksGetResource

    -- * Creating a Request
    , projectsSinksGet
    , ProjectsSinksGet

    -- * Request Lenses
    , psgXgafv
    , psgUploadProtocol
    , psgPp
    , psgAccessToken
    , psgUploadType
    , psgBearerToken
    , psgSinkName
    , psgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.get@ method which the
-- 'ProjectsSinksGet' request conforms to.
type ProjectsSinksGetResource =
     "v2beta1" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a sink.
--
-- /See:/ 'projectsSinksGet' smart constructor.
data ProjectsSinksGet = ProjectsSinksGet
    { _psgXgafv          :: !(Maybe Text)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgPp             :: !Bool
    , _psgAccessToken    :: !(Maybe Text)
    , _psgUploadType     :: !(Maybe Text)
    , _psgBearerToken    :: !(Maybe Text)
    , _psgSinkName       :: !Text
    , _psgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksGet' with the minimum fields required to make a request.
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
-- * 'psgSinkName'
--
-- * 'psgCallback'
projectsSinksGet
    :: Text -- ^ 'psgSinkName'
    -> ProjectsSinksGet
projectsSinksGet pPsgSinkName_ =
    ProjectsSinksGet
    { _psgXgafv = Nothing
    , _psgUploadProtocol = Nothing
    , _psgPp = True
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgBearerToken = Nothing
    , _psgSinkName = pPsgSinkName_
    , _psgCallback = Nothing
    }

-- | V1 error format.
psgXgafv :: Lens' ProjectsSinksGet (Maybe Text)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSinksGet (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | Pretty-print response.
psgPp :: Lens' ProjectsSinksGet Bool
psgPp = lens _psgPp (\ s a -> s{_psgPp = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSinksGet (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSinksGet (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | OAuth bearer token.
psgBearerToken :: Lens' ProjectsSinksGet (Maybe Text)
psgBearerToken
  = lens _psgBearerToken
      (\ s a -> s{_psgBearerToken = a})

-- | The resource name of the sink to return. Example:
-- \`\"projects\/my-project-id\/sinks\/my-sink-id\"\`.
psgSinkName :: Lens' ProjectsSinksGet Text
psgSinkName
  = lens _psgSinkName (\ s a -> s{_psgSinkName = a})

-- | JSONP
psgCallback :: Lens' ProjectsSinksGet (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

instance GoogleRequest ProjectsSinksGet where
        type Rs ProjectsSinksGet = LogSink
        requestClient ProjectsSinksGet{..}
          = go _psgSinkName _psgXgafv _psgUploadProtocol
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
