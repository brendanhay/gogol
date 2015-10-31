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
-- Module      : Network.Google.Resource.Genomics.CallSets.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new call set. For the definitions of call sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ <https://cloud.google.com/genomics/ Genomics API Reference> for @genomics.callsets.create@.
module Network.Google.Resource.Genomics.CallSets.Create
    (
    -- * REST Resource
      CallSetsCreateResource

    -- * Creating a Request
    , callSetsCreate
    , CallSetsCreate

    -- * Request Lenses
    , cscXgafv
    , cscUploadProtocol
    , cscPp
    , cscAccessToken
    , cscUploadType
    , cscPayload
    , cscBearerToken
    , cscCallback
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @genomics.callsets.create@ method which the
-- 'CallSetsCreate' request conforms to.
type CallSetsCreateResource =
     "v1" :>
       "callsets" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CallSet :> Post '[JSON] CallSet

-- | Creates a new call set. For the definitions of call sets and other
-- genomics resources, see [Fundamentals of Google
-- Genomics](https:\/\/cloud.google.com\/genomics\/fundamentals-of-google-genomics)
--
-- /See:/ 'callSetsCreate' smart constructor.
data CallSetsCreate = CallSetsCreate
    { _cscXgafv          :: !(Maybe Text)
    , _cscUploadProtocol :: !(Maybe Text)
    , _cscPp             :: !Bool
    , _cscAccessToken    :: !(Maybe Text)
    , _cscUploadType     :: !(Maybe Text)
    , _cscPayload        :: !CallSet
    , _cscBearerToken    :: !(Maybe Text)
    , _cscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSetsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscXgafv'
--
-- * 'cscUploadProtocol'
--
-- * 'cscPp'
--
-- * 'cscAccessToken'
--
-- * 'cscUploadType'
--
-- * 'cscPayload'
--
-- * 'cscBearerToken'
--
-- * 'cscCallback'
callSetsCreate
    :: CallSet -- ^ 'cscPayload'
    -> CallSetsCreate
callSetsCreate pCscPayload_ =
    CallSetsCreate
    { _cscXgafv = Nothing
    , _cscUploadProtocol = Nothing
    , _cscPp = True
    , _cscAccessToken = Nothing
    , _cscUploadType = Nothing
    , _cscPayload = pCscPayload_
    , _cscBearerToken = Nothing
    , _cscCallback = Nothing
    }

-- | V1 error format.
cscXgafv :: Lens' CallSetsCreate (Maybe Text)
cscXgafv = lens _cscXgafv (\ s a -> s{_cscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cscUploadProtocol :: Lens' CallSetsCreate (Maybe Text)
cscUploadProtocol
  = lens _cscUploadProtocol
      (\ s a -> s{_cscUploadProtocol = a})

-- | Pretty-print response.
cscPp :: Lens' CallSetsCreate Bool
cscPp = lens _cscPp (\ s a -> s{_cscPp = a})

-- | OAuth access token.
cscAccessToken :: Lens' CallSetsCreate (Maybe Text)
cscAccessToken
  = lens _cscAccessToken
      (\ s a -> s{_cscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cscUploadType :: Lens' CallSetsCreate (Maybe Text)
cscUploadType
  = lens _cscUploadType
      (\ s a -> s{_cscUploadType = a})

-- | Multipart request metadata.
cscPayload :: Lens' CallSetsCreate CallSet
cscPayload
  = lens _cscPayload (\ s a -> s{_cscPayload = a})

-- | OAuth bearer token.
cscBearerToken :: Lens' CallSetsCreate (Maybe Text)
cscBearerToken
  = lens _cscBearerToken
      (\ s a -> s{_cscBearerToken = a})

-- | JSONP
cscCallback :: Lens' CallSetsCreate (Maybe Text)
cscCallback
  = lens _cscCallback (\ s a -> s{_cscCallback = a})

instance GoogleRequest CallSetsCreate where
        type Rs CallSetsCreate = CallSet
        type Scopes CallSetsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/genomics"]
        requestClient CallSetsCreate{..}
          = go _cscXgafv _cscUploadProtocol (Just _cscPp)
              _cscAccessToken
              _cscUploadType
              _cscBearerToken
              _cscCallback
              (Just AltJSON)
              _cscPayload
              genomicsService
          where go
                  = buildClient (Proxy :: Proxy CallSetsCreateResource)
                      mempty
