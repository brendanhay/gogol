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
-- Module      : Network.Google.Resource.RemoteBuildExecution.GetCapabilities
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- GetCapabilities returns the server capabilities configuration.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.getCapabilities@.
module Network.Google.Resource.RemoteBuildExecution.GetCapabilities
    (
    -- * REST Resource
      GetCapabilitiesResource

    -- * Creating a Request
    , getCapabilities
    , GetCapabilities

    -- * Request Lenses
    , gcXgafv
    , gcUploadProtocol
    , gcAccessToken
    , gcUploadType
    , gcInstanceName
    , gcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.getCapabilities@ method which the
-- 'GetCapabilities' request conforms to.
type GetCapabilitiesResource =
     "v2" :>
       Capture "instanceName" Text :>
         "capabilities" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON]
                         BuildBazelRemoteExecutionV2ServerCapabilities

-- | GetCapabilities returns the server capabilities configuration.
--
-- /See:/ 'getCapabilities' smart constructor.
data GetCapabilities =
  GetCapabilities'
    { _gcXgafv          :: !(Maybe Xgafv)
    , _gcUploadProtocol :: !(Maybe Text)
    , _gcAccessToken    :: !(Maybe Text)
    , _gcUploadType     :: !(Maybe Text)
    , _gcInstanceName   :: !Text
    , _gcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetCapabilities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcXgafv'
--
-- * 'gcUploadProtocol'
--
-- * 'gcAccessToken'
--
-- * 'gcUploadType'
--
-- * 'gcInstanceName'
--
-- * 'gcCallback'
getCapabilities
    :: Text -- ^ 'gcInstanceName'
    -> GetCapabilities
getCapabilities pGcInstanceName_ =
  GetCapabilities'
    { _gcXgafv = Nothing
    , _gcUploadProtocol = Nothing
    , _gcAccessToken = Nothing
    , _gcUploadType = Nothing
    , _gcInstanceName = pGcInstanceName_
    , _gcCallback = Nothing
    }


-- | V1 error format.
gcXgafv :: Lens' GetCapabilities (Maybe Xgafv)
gcXgafv = lens _gcXgafv (\ s a -> s{_gcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gcUploadProtocol :: Lens' GetCapabilities (Maybe Text)
gcUploadProtocol
  = lens _gcUploadProtocol
      (\ s a -> s{_gcUploadProtocol = a})

-- | OAuth access token.
gcAccessToken :: Lens' GetCapabilities (Maybe Text)
gcAccessToken
  = lens _gcAccessToken
      (\ s a -> s{_gcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gcUploadType :: Lens' GetCapabilities (Maybe Text)
gcUploadType
  = lens _gcUploadType (\ s a -> s{_gcUploadType = a})

-- | The instance of the execution system to operate against. A server may
-- support multiple instances of the execution system (with their own
-- workers, storage, caches, etc.). The server MAY require use of this
-- field to select between them in an implementation-defined fashion,
-- otherwise it can be omitted.
gcInstanceName :: Lens' GetCapabilities Text
gcInstanceName
  = lens _gcInstanceName
      (\ s a -> s{_gcInstanceName = a})

-- | JSONP
gcCallback :: Lens' GetCapabilities (Maybe Text)
gcCallback
  = lens _gcCallback (\ s a -> s{_gcCallback = a})

instance GoogleRequest GetCapabilities where
        type Rs GetCapabilities =
             BuildBazelRemoteExecutionV2ServerCapabilities
        type Scopes GetCapabilities =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient GetCapabilities'{..}
          = go _gcInstanceName _gcXgafv _gcUploadProtocol
              _gcAccessToken
              _gcUploadType
              _gcCallback
              (Just AltJSON)
              remoteBuildExecutionService
          where go
                  = buildClient
                      (Proxy :: Proxy GetCapabilitiesResource)
                      mempty
