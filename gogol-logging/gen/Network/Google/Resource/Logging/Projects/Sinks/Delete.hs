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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.sinks.delete@.
module Network.Google.Resource.Logging.Projects.Sinks.Delete
    (
    -- * REST Resource
      ProjectsSinksDeleteResource

    -- * Creating a Request
    , projectsSinksDelete
    , ProjectsSinksDelete

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdPp
    , psdAccessToken
    , psdUploadType
    , psdBearerToken
    , psdSinkName
    , psdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.sinks.delete@ method which the
-- 'ProjectsSinksDelete' request conforms to.
type ProjectsSinksDeleteResource =
     "v2beta1" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a sink.
--
-- /See:/ 'projectsSinksDelete' smart constructor.
data ProjectsSinksDelete = ProjectsSinksDelete'
    { _psdXgafv          :: !(Maybe Text)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdPp             :: !Bool
    , _psdAccessToken    :: !(Maybe Text)
    , _psdUploadType     :: !(Maybe Text)
    , _psdBearerToken    :: !(Maybe Text)
    , _psdSinkName       :: !Text
    , _psdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSinksDelete' with the minimum fields required to make a request.
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
-- * 'psdSinkName'
--
-- * 'psdCallback'
projectsSinksDelete
    :: Text -- ^ 'psdSinkName'
    -> ProjectsSinksDelete
projectsSinksDelete pPsdSinkName_ =
    ProjectsSinksDelete'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdPp = True
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdBearerToken = Nothing
    , _psdSinkName = pPsdSinkName_
    , _psdCallback = Nothing
    }

-- | V1 error format.
psdXgafv :: Lens' ProjectsSinksDelete (Maybe Text)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsSinksDelete (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | Pretty-print response.
psdPp :: Lens' ProjectsSinksDelete Bool
psdPp = lens _psdPp (\ s a -> s{_psdPp = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsSinksDelete (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsSinksDelete (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | OAuth bearer token.
psdBearerToken :: Lens' ProjectsSinksDelete (Maybe Text)
psdBearerToken
  = lens _psdBearerToken
      (\ s a -> s{_psdBearerToken = a})

-- | The resource name of the sink to delete. Example:
-- \`\"projects\/my-project-id\/sinks\/my-sink-id\"\`.
psdSinkName :: Lens' ProjectsSinksDelete Text
psdSinkName
  = lens _psdSinkName (\ s a -> s{_psdSinkName = a})

-- | JSONP
psdCallback :: Lens' ProjectsSinksDelete (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest ProjectsSinksDelete where
        type Rs ProjectsSinksDelete = Empty
        type Scopes ProjectsSinksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsSinksDelete'{..}
          = go _psdSinkName _psdXgafv _psdUploadProtocol
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
