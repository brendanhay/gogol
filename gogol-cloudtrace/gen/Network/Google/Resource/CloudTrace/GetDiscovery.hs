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
-- Module      : Network.Google.Resource.CloudTrace.GetDiscovery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a discovery document in the specified \`format\`. The typeurl in
-- the returned google.protobuf.Any value depends on the requested format.
--
-- /See:/ <https://cloud.google.com/tools/cloud-trace Google Cloud Trace API Reference> for @CloudtraceGetDiscovery@.
module Network.Google.Resource.CloudTrace.GetDiscovery
    (
    -- * REST Resource
      GetDiscoveryResource

    -- * Creating a Request
    , getDiscovery'
    , GetDiscovery'

    -- * Request Lenses
    , gdXgafv
    , gdArgs
    , gdUploadProtocol
    , gdPp
    , gdAccessToken
    , gdFormat
    , gdUploadType
    , gdBearerToken
    , gdVersion
    , gdLabels
    , gdCallback
    ) where

import           Network.Google.CloudTrace.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudtraceGetDiscovery@ method which the
-- 'GetDiscovery'' request conforms to.
type GetDiscoveryResource =
     "v1" :>
       "discovery" :>
         QueryParam "$.xgafv" Text :>
           QueryParams "args" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "format" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "version" Text :>
                           QueryParams "labels" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] ()

-- | Returns a discovery document in the specified \`format\`. The typeurl in
-- the returned google.protobuf.Any value depends on the requested format.
--
-- /See:/ 'getDiscovery'' smart constructor.
data GetDiscovery' = GetDiscovery'
    { _gdXgafv          :: !(Maybe Text)
    , _gdArgs           :: !(Maybe [Text])
    , _gdUploadProtocol :: !(Maybe Text)
    , _gdPp             :: !Bool
    , _gdAccessToken    :: !(Maybe Text)
    , _gdFormat         :: !(Maybe Text)
    , _gdUploadType     :: !(Maybe Text)
    , _gdBearerToken    :: !(Maybe Text)
    , _gdVersion        :: !(Maybe Text)
    , _gdLabels         :: !(Maybe [Text])
    , _gdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetDiscovery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdXgafv'
--
-- * 'gdArgs'
--
-- * 'gdUploadProtocol'
--
-- * 'gdPp'
--
-- * 'gdAccessToken'
--
-- * 'gdFormat'
--
-- * 'gdUploadType'
--
-- * 'gdBearerToken'
--
-- * 'gdVersion'
--
-- * 'gdLabels'
--
-- * 'gdCallback'
getDiscovery'
    :: GetDiscovery'
getDiscovery' =
    GetDiscovery'
    { _gdXgafv = Nothing
    , _gdArgs = Nothing
    , _gdUploadProtocol = Nothing
    , _gdPp = True
    , _gdAccessToken = Nothing
    , _gdFormat = Nothing
    , _gdUploadType = Nothing
    , _gdBearerToken = Nothing
    , _gdVersion = Nothing
    , _gdLabels = Nothing
    , _gdCallback = Nothing
    }

-- | V1 error format.
gdXgafv :: Lens' GetDiscovery' (Maybe Text)
gdXgafv = lens _gdXgafv (\ s a -> s{_gdXgafv = a})

-- | Any additional arguments.
gdArgs :: Lens' GetDiscovery' [Text]
gdArgs
  = lens _gdArgs (\ s a -> s{_gdArgs = a}) . _Default .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gdUploadProtocol :: Lens' GetDiscovery' (Maybe Text)
gdUploadProtocol
  = lens _gdUploadProtocol
      (\ s a -> s{_gdUploadProtocol = a})

-- | Pretty-print response.
gdPp :: Lens' GetDiscovery' Bool
gdPp = lens _gdPp (\ s a -> s{_gdPp = a})

-- | OAuth access token.
gdAccessToken :: Lens' GetDiscovery' (Maybe Text)
gdAccessToken
  = lens _gdAccessToken
      (\ s a -> s{_gdAccessToken = a})

-- | The format requested for discovery.
gdFormat :: Lens' GetDiscovery' (Maybe Text)
gdFormat = lens _gdFormat (\ s a -> s{_gdFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gdUploadType :: Lens' GetDiscovery' (Maybe Text)
gdUploadType
  = lens _gdUploadType (\ s a -> s{_gdUploadType = a})

-- | OAuth bearer token.
gdBearerToken :: Lens' GetDiscovery' (Maybe Text)
gdBearerToken
  = lens _gdBearerToken
      (\ s a -> s{_gdBearerToken = a})

-- | The API version of the requested discovery doc.
gdVersion :: Lens' GetDiscovery' (Maybe Text)
gdVersion
  = lens _gdVersion (\ s a -> s{_gdVersion = a})

-- | A list of labels (like visibility) influencing the scope of the
-- requested doc.
gdLabels :: Lens' GetDiscovery' [Text]
gdLabels
  = lens _gdLabels (\ s a -> s{_gdLabels = a}) .
      _Default
      . _Coerce

-- | JSONP
gdCallback :: Lens' GetDiscovery' (Maybe Text)
gdCallback
  = lens _gdCallback (\ s a -> s{_gdCallback = a})

instance GoogleRequest GetDiscovery' where
        type Rs GetDiscovery' = ()
        requestClient GetDiscovery'{..}
          = go _gdXgafv (_gdArgs ^. _Default) _gdUploadProtocol
              (Just _gdPp)
              _gdAccessToken
              _gdFormat
              _gdUploadType
              _gdBearerToken
              _gdVersion
              (_gdLabels ^. _Default)
              _gdCallback
              (Just AltJSON)
              cloudTraceService
          where go
                  = buildClient (Proxy :: Proxy GetDiscoveryResource)
                      mempty
