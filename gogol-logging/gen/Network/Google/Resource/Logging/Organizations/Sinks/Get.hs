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
-- Module      : Network.Google.Resource.Logging.Organizations.Sinks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a sink.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.sinks.get@.
module Network.Google.Resource.Logging.Organizations.Sinks.Get
    (
    -- * REST Resource
      OrganizationsSinksGetResource

    -- * Creating a Request
    , organizationsSinksGet
    , OrganizationsSinksGet

    -- * Request Lenses
    , osgXgafv
    , osgUploadProtocol
    , osgPp
    , osgAccessToken
    , osgUploadType
    , osgBearerToken
    , osgSinkName
    , osgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.sinks.get@ method which the
-- 'OrganizationsSinksGet' request conforms to.
type OrganizationsSinksGetResource =
     "v2" :>
       Capture "sinkName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] LogSink

-- | Gets a sink.
--
-- /See:/ 'organizationsSinksGet' smart constructor.
data OrganizationsSinksGet = OrganizationsSinksGet'
    { _osgXgafv          :: !(Maybe Xgafv)
    , _osgUploadProtocol :: !(Maybe Text)
    , _osgPp             :: !Bool
    , _osgAccessToken    :: !(Maybe Text)
    , _osgUploadType     :: !(Maybe Text)
    , _osgBearerToken    :: !(Maybe Text)
    , _osgSinkName       :: !Text
    , _osgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSinksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgXgafv'
--
-- * 'osgUploadProtocol'
--
-- * 'osgPp'
--
-- * 'osgAccessToken'
--
-- * 'osgUploadType'
--
-- * 'osgBearerToken'
--
-- * 'osgSinkName'
--
-- * 'osgCallback'
organizationsSinksGet
    :: Text -- ^ 'osgSinkName'
    -> OrganizationsSinksGet
organizationsSinksGet pOsgSinkName_ =
    OrganizationsSinksGet'
    { _osgXgafv = Nothing
    , _osgUploadProtocol = Nothing
    , _osgPp = True
    , _osgAccessToken = Nothing
    , _osgUploadType = Nothing
    , _osgBearerToken = Nothing
    , _osgSinkName = pOsgSinkName_
    , _osgCallback = Nothing
    }

-- | V1 error format.
osgXgafv :: Lens' OrganizationsSinksGet (Maybe Xgafv)
osgXgafv = lens _osgXgafv (\ s a -> s{_osgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osgUploadProtocol :: Lens' OrganizationsSinksGet (Maybe Text)
osgUploadProtocol
  = lens _osgUploadProtocol
      (\ s a -> s{_osgUploadProtocol = a})

-- | Pretty-print response.
osgPp :: Lens' OrganizationsSinksGet Bool
osgPp = lens _osgPp (\ s a -> s{_osgPp = a})

-- | OAuth access token.
osgAccessToken :: Lens' OrganizationsSinksGet (Maybe Text)
osgAccessToken
  = lens _osgAccessToken
      (\ s a -> s{_osgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osgUploadType :: Lens' OrganizationsSinksGet (Maybe Text)
osgUploadType
  = lens _osgUploadType
      (\ s a -> s{_osgUploadType = a})

-- | OAuth bearer token.
osgBearerToken :: Lens' OrganizationsSinksGet (Maybe Text)
osgBearerToken
  = lens _osgBearerToken
      (\ s a -> s{_osgBearerToken = a})

-- | Required. The resource name of the sink to return. Example:
-- \`\"projects\/my-project-id\/sinks\/my-sink-id\"\`.
osgSinkName :: Lens' OrganizationsSinksGet Text
osgSinkName
  = lens _osgSinkName (\ s a -> s{_osgSinkName = a})

-- | JSONP
osgCallback :: Lens' OrganizationsSinksGet (Maybe Text)
osgCallback
  = lens _osgCallback (\ s a -> s{_osgCallback = a})

instance GoogleRequest OrganizationsSinksGet where
        type Rs OrganizationsSinksGet = LogSink
        type Scopes OrganizationsSinksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsSinksGet'{..}
          = go _osgSinkName _osgXgafv _osgUploadProtocol
              (Just _osgPp)
              _osgAccessToken
              _osgUploadType
              _osgBearerToken
              _osgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSinksGetResource)
                      mempty
